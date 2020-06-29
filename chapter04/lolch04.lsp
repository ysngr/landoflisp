; chapter04

(defun my-length (list)
    (if list
        (1+ (my-length (cdr list)))
        0))


(defvar *arch-enemy* nil)

(defun pudding-eater-cond (person)
    (cond ((eq person 'henry) (setf *arch-enemy* 'stupid-lisp-alien)
                              '(curse you lisp alien - you ate my pudding))
          ((eq person 'johnny) (setf *arch-enemy* 'useless-old-johnny)
                               '(i hope you choked on my pudding johnny))
          (t                   '(why you ate my pudding stranger ?))))

(defun pudding-eater-case (person)
    (case person
        ((henry) (setf *arch-enemy* 'stupid-lisp-alien)
                 '(curse you lisp alien - you ate my pudding))
        ((johnny) (setf *arch-enemy* 'useless-old-johnny))
        (otherwise '(why tou eat my pudding stranger ?))))
