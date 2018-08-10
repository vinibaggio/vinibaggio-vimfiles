#!/bin/bash

set +x

if [ "$(uname)" == "Linux" ]; then
  install-linux.sh
fi

cd $HOME
ln -s vinibaggio-profile/vim .vim
ln -s vinibaggio-profile/vim/vimrc .vimrc
ln -s vinibaggio-profile/gitconfig .gitconfig
ln -s vinibaggio-profile/bashrc .bashrc

# Install vim packages
vim +PlugInstall +qall

# Install other packages
brew install fzf fasd hub
