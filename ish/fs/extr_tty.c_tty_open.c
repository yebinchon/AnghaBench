
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty {scalar_t__ session; int lock; int fds_lock; int fds; } ;
struct fd {int flags; int tty_other_fds; struct tty* tty; } ;
struct TYPE_4__ {scalar_t__ pid; TYPE_1__* group; } ;
struct TYPE_3__ {scalar_t__ sid; } ;


 int O_NOCTTY_ ;
 TYPE_2__* current ;
 int list_add (int *,int *) ;
 int lock (int *) ;
 int pids_lock ;
 int tty_set_controlling (TYPE_1__*,struct tty*) ;
 int unlock (int *) ;

int tty_open(struct tty *tty, struct fd *fd) {
    fd->tty = tty;

    lock(&tty->fds_lock);
    list_add(&tty->fds, &fd->tty_other_fds);
    unlock(&tty->fds_lock);

    if (!(fd->flags & O_NOCTTY_)) {



        lock(&pids_lock);
        lock(&tty->lock);
        if (tty->session == 0 && current->group->sid == current->pid)
            tty_set_controlling(current->group, tty);
        unlock(&tty->lock);
        unlock(&pids_lock);
    }

    return 0;
}
