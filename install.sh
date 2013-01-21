#!/bin/bash
CONFIG_HOME=.myconfig

warn(){
	echo "$1" >&2
}

die(){
	warn "$1"
	exit 1
}

[ -e "~/.config" ] && die "~/config already exists."

cd ~

#install vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

#install oh-my-zsh
#curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

#Checkout my config
git clone git@github.com:Swind/linux-config.git "$CONFIG_HOME"

ln -s $CONFIG_HOME/.vim .vim
ln -s $CONFIG_HOME/.vim/.vimrc .vimrc
ln -s $CONFIG_HOME/.zshrc .zshrc
ln -s $CONFIG_HOME/.tmux.conf .tmux.conf

echo "Configuration files has been installed."
cd "$CONFIG_HOME"
