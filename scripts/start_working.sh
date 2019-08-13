#!/usr/bin/env bash

# Constants
ARROW='>'
# Paths
source "${HOME}/dotfiles/util/imports.sh"

greetings

report_header "$ARROW Updating Dotfiles..."
git pull origin master

report_header "$ARROW Updating Private Dotfiles..."
cd $PRIVATE_DOTFILES
git pull origin master

report_header "$ARROW Updating Boosnote Files..."
cd $BOOSTNOTE
git pull origin master

report_header "$ARROW Summoning the big horse..."
cd $SIEDOS_SCRIPTS
./clonar_projetos_manutencao.sh
