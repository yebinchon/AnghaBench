
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* tty; int tty_other_fds; } ;
struct TYPE_2__ {int fds_lock; } ;


 int list_remove_safe (int *) ;
 int lock (int *) ;
 int tty_release (TYPE_1__*) ;
 int ttys_lock ;
 int unlock (int *) ;

__attribute__((used)) static int tty_close(struct fd *fd) {
    if (fd->tty != ((void*)0)) {
        lock(&fd->tty->fds_lock);
        list_remove_safe(&fd->tty_other_fds);
        unlock(&fd->tty->fds_lock);
        lock(&ttys_lock);
        tty_release(fd->tty);
        unlock(&ttys_lock);
    }
    return 0;
}
