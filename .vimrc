set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent

set encoding=UTF-8
set exrc
set relativenumber
set nu
set hidden
set noerrorbells
set nowrap
set noswapfile
set incsearch
set scrolloff=6
set termguicolors
set signcolumn=yes
set colorcolumn=80

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'sainnhe/everforest'
Plug 'gruvbox-community/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'arcticicestudio/nord-vim'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'voldikss/vim-floaterm'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

let mapleader = ","

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

map <space> /

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>ö :bNext<cr>
map <leader>ä :bprev<cr>

colorscheme space-vim-dark

let g:airline_powerline_fonts=1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <silent> <Leader>t   :FloatermToggle<CR>
tnoremap <silent> <Leader>t   <C-\><C-n>:FloatermToggle<CR>

nmap <C-P> :FZF<CR>

source /home/william/vim/lsp-examples/vimrc.generated
