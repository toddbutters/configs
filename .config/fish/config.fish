set -gx EDITOR nvim
set -gx MANPAGER 'nvim +Man!'


# Abbreviations expand with space key
abbr --add gst 'git status'
abbr --add glo 'git log'

# Automatically create or attach to a tmux session
# https://www.baeldung.com/linux/tmux-startup-default-shell
if type -q tmux
    if not test -n "$TMUX"
        tmux attach-session -t default; or tmux new-session -s default
    end
end

# Commands to run in interactive sessions can go here
if status is-interactive
  zoxide init fish | source
  mise activate fish | source
end

[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.fish ]; and source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.fish
