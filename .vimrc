"#####################################PLUGINS####################################################
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'


call vundle#end()
filetype plugin indent on

autocmd FileType cpp let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_cpp.py"
autocmd FileType c let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_cpp.py"
autocmd FileType cs let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf_cs.py"


"################################################################################################
"#####################################ColorScheme################################################
"################################################################################################
	

let g:solarized_termtrans=1
let g:solarized_degrade=0
let g:solarized_bold=1
let g:solarized_underline=1
let g:solarized_italic=1
let g:solarized_termcolors=256
let g:solarized_contrast="normal"
let g:solarized_visibility="normal"
let g:solarized_diffmode="normal"
let g:solarized_hitrail=0


syntax enable
set background=dark
colorscheme solarized


"#################################################################################################
"######################################Settings###################################################
"#################################################################################################


set backup
set ruler
set number
set history=200
set hls
set mouse=
set t_Co=256
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent

"#################################################################################################
"######################################Bindings######################################################
"#################################################################################################


inoremap jj <Esc>
nnoremap <F7> :YcmForceCompileAndDiagnostics<CR>
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>


inoremap <F9> <Esc><F9>
inoremap <F8> <Esc><F8>
autocmd FileType cpp nnoremap <F9> :w<CR> :!clear<CR>:!rm "%:p:r" -f && g++ -O2 -DEBUG -std=c++11 -o "%:p:r" "%:p"<CR>
autocmd FileType cpp nnoremap <F8> :!"%:p:r"<CR>
autocmd FileType cs nnoremap <F9> :w<CR>:!mcs "%:p:r".cs<CR>
autocmd FileType cs nnoremap <F8> :!mono "%:p:r".exe<CR>
autocmd FileType c nnoremap <F9> :w<CR>:!gcc "%:p:r".c -Wall -pedantic -std=c99 -o "%:p:r"<CR>
autocmd FileType c nnoremap <F8> :!"%:p:r"<CR>

"--------------MAKE-----------
inoremap <F6> <Esc><F6>
inoremap <F7> <Esc><F7>

nnoremap <F6> :!make clear<CR>:w<CR>:!make all<CR>
nnoremap <F7> :!./../build/main<CR>



inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap        [  []<Left>
inoremap <expr> ]  strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap        {  <CR>{<CR>}<CR><Up><Up><Right><CR>
inoremap        qq {}<Left>
inoremap <expr> }  strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"


"#################################################################################################
"####################################Syntax#######################################################
"#################################################################################################
