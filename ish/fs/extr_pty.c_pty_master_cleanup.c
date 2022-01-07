
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct tty* other; } ;
struct tty {int lock; TYPE_1__ pty; } ;


 int lock (int *) ;
 int tty_hangup (struct tty*) ;
 int tty_release (struct tty*) ;
 int unlock (int *) ;

__attribute__((used)) static void pty_master_cleanup(struct tty *tty) {
    struct tty *slave = tty->pty.other;
    slave->pty.other = ((void*)0);
    lock(&slave->lock);
    tty_hangup(slave);
    unlock(&slave->lock);
    tty_release(slave);
}
