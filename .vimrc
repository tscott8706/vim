set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
Bundle 'https://github.com/kien/ctrlp.vim'

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" enable syntax highlighting
syntax enable

" show line numbers
set number
"
"number of visual spaces per tab
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" tabs are spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" indent when moving to the next line while writing code
set autoindent

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to.
set lazyredraw

" search as characters are entered
set incsearch

" highlight matches
set hlsearch

" show invisible characters
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
:set lcs+=space:·
:set list

" right margin
:set colorcolumn=80

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_custom_ignore = '\v[\/]\.(svn|o|pyc)$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Run nosetests
nnoremap ,r :wa <bar> !nosetests --exe --nocapture --with-coverage --cover-branches --cover-inclusive --cover-html tests<CR>
