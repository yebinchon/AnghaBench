
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_driver {int ** ttys; TYPE_1__* ops; } ;
struct TYPE_4__ {struct tty* other; } ;
struct tty {scalar_t__ refcount; size_t num; int lock; TYPE_2__ pty; struct tty_driver* driver; int produced; } ;
struct TYPE_3__ {int (* cleanup ) (struct tty*) ;} ;


 int cond_destroy (int *) ;
 int free (struct tty*) ;
 int lock (int *) ;
 struct tty_driver pty_slave ;
 int stub1 (struct tty*) ;
 int tty_poll_wakeup (struct tty*) ;
 int unlock (int *) ;

void tty_release(struct tty *tty) {
    lock(&tty->lock);
    if (--tty->refcount == 0) {
        struct tty_driver *driver = tty->driver;
        if (driver->ops->cleanup)
            driver->ops->cleanup(tty);
        driver->ttys[tty->num] = ((void*)0);
        unlock(&tty->lock);
        cond_destroy(&tty->produced);
        free(tty);
    } else {

        struct tty *master = ((void*)0);
        if (tty->driver == &pty_slave && tty->refcount == 1)
            master = tty->pty.other;
        unlock(&tty->lock);
        if (master != ((void*)0)) {
            lock(&master->lock);
            tty_poll_wakeup(master);
            unlock(&master->lock);
        }
    }
}
