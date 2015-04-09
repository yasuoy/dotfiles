autoload colors
colors

PROMPT="%{$fg[green]%}[%m]%# %{$reset_color%}"
RPROMPT="%{$fg[green]%}%*%{$reset_color%}"

export LSCOLORS=gxfxcxdxbxegedabagacag
export LS_COLORS='di=36;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;46'

# 補完候補もLS_COLORSに合わせて色が付くようにする
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# lsがカラー表示になるようエイリアスを設定
case "${OSTYPE}" in
darwin*)
  # Mac
  alias ls="ls -GF"
  ;;
linux*)
  # Linux
  alias ls='ls -F --color'
  ;;
esac

# 補完機能
autoload -Uz compinit
compinit

# Emacs風キーバインド
bindkey -e

setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias -g M=' | more'
alias -g H=' | head'
alias -g T=' | tail'
alias -g N=' > /dev/null'
alias -g P=' --help | less'
alias -g L=' | less'
alias -g G=' | grep'
