
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty* other; } ;
struct tty {int refcount; int lock; scalar_t__ ever_opened; TYPE_1__ pty; int * driver; } ;


 int lock (int *) ;
 int pty_master ;
 int unlock (int *) ;

__attribute__((used)) static bool pty_is_half_closed_master(struct tty *tty) {
    if (tty->driver != &pty_master)
        return 0;

    struct tty *slave = tty->pty.other;

    lock(&slave->lock);
    bool half_closed = slave->ever_opened && slave->refcount == 1;
    unlock(&slave->lock);
    return half_closed;
}
