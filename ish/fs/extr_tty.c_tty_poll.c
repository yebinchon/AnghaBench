
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lflags; } ;
struct tty {scalar_t__ bufsize; scalar_t__ packet_flags; int lock; int * driver; TYPE_1__ termios; scalar_t__ hung_up; } ;
struct fd {struct tty* tty; } ;


 int ICANON_ ;
 int POLL_ERR ;
 int POLL_HUP ;
 int POLL_PRI ;
 int POLL_READ ;
 int POLL_WRITE ;
 int lock (int *) ;
 scalar_t__ pty_is_half_closed_master (struct tty*) ;
 int pty_master ;
 size_t tty_canon_size (struct tty*) ;
 int unlock (int *) ;

__attribute__((used)) static int tty_poll(struct fd *fd) {
    struct tty *tty = fd->tty;
    lock(&tty->lock);
    int types = 0;
    types |= POLL_WRITE;
    if (tty->hung_up) {
        types |= POLL_READ | POLL_WRITE | POLL_ERR | POLL_HUP;
    } else if (pty_is_half_closed_master(tty)) {
        types |= POLL_READ | POLL_HUP;
    } else if (tty->termios.lflags & ICANON_) {
        if (tty_canon_size(tty) != (size_t) -1)
            types |= POLL_READ;
    } else {
        if (tty->bufsize > 0)
            types |= POLL_READ;
    }
    if (tty->driver == &pty_master && tty->packet_flags != 0)
        types |= POLL_PRI;
    unlock(&tty->lock);
    return types;
}
