local keymap = vim.api.nvim_set_keymap

local default = { silent = true, noremap = true }
local verbose = { silent = false, noremap = true }
		
vim.g.mapleader = " "

-- Exit insert mode 
keymap("i", "nn", "<ESC>", default)

-- File save and exit
keymap("n","<C-s>", ":w<Cr>", verbose)
keymap("i","<C-s>", "<ESC>:w<Cr>i", verbose)
keymap("n","<C-q>", ":q<Cr>", default)
keymap("i","<C-q>", "<ESC>:q<Cr>", default)

-- Line navigation
keymap("n","<Leader>k", "$", default)
keymap("n","<Leader>j", "0", default)

-- Buffer navigation
keymap("n","<Leader>w", ":bnext<Cr>", default)
keymap("n","<Leader>s", ":bprevious<Cr>",default)

-- Change split direction
keymap("n","<Leader>a","<C-w>t<C-w>H", default)
keymap("n","<Leader>s","<C-w>t<C-w>K", default)

-- Telescope
keymap("n","<A-f>",":Telescope find_files<Cr>", default)

-- netrew
keymap("n","<A-g>",":Ex<Cr>", default)

-- undotree
keymap("n", "<Leader>u", ":UndotreeToggle<Cr>", default)
