#!/bin/bash

dir=~/dotfiles
olddir=~/dotfiles_old
files="bashrc vimrc"

echo "Creating $olddir for backup of dotfiles in ~"
mkdir -p $olddir
echo "...done"

echo "Changing to $dir"
cd $dir
echo "...done"

echo "Moving dotfiles in ~ to $olddir"
for file in $files; do
	mv ~/.$file ~/dotfiles_old/
	echo "Linking $file in ~."
	ln -s $dir/$file ~/.$file
done 
