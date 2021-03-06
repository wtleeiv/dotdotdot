(setq  user-full-name "Tyler Lee"
       user-mail-address "wtleeiv@gmail.com")

(setq default-directory "~"
      backup-directory-alist '(("" . "~/.emacs.d/backup"))
      auto-save-file-name-transforms `((".*"  "~/.emacs.d/backup/" t)))

(setq indent-tabs-mode nil
      vc-follow-symlinks t
      require-final-newline t
      inhibit-startup-message t
      ring-bell-function 'ignore
      confirm-kill-processes nil
      initial-scratch-message nil
      sentence-end-double-space nil
      uniquify-buffer-name-style 'post-forward)

(require 'evil)
(evil-mode 1)

(evil-global-set-key 'normal (kbd ",") 'evil-ex)
(evil-global-set-key 'normal (kbd ":") 'evil-repeat-find-char-reverse)

(require 'paren)
(show-paren-mode t)
(setq show-paren-delay 0)

(require 'ido)
(setq ido-enable-flex-matching t
      ido-everywhere t)
(ido-mode 1)
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(require 'which-key)
(which-key-mode)

(blink-cursor-mode 0)
(column-number-mode 1)
(global-hl-line-mode t)

;; syntax highlighting
(global-font-lock-mode t)
;; update buffer when file changes on disk
(global-auto-revert-mode t)(blink-cursor-mode 0)
(blink-cursor-mode 0)
(setq-default dired-listing-switches "-alh")
(setq-default buffer-file-coding-system 'utf-8-unix)

(fset 'yes-or-no-p 'y-or-n-p)

(add-hook 'before-save-hook
	  'delete-trailing-whitespace)

;; start emacs server
;;; connect with :: emacsclient <file> in shell
(server-start)

(provide 'wtleeiv-general)
