
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct winsize_ {int dummy; } ;
struct termios_ {int dummy; } ;
struct TYPE_2__ {struct tty* other; } ;
struct tty {int lock; int * driver; struct winsize_ winsize; struct termios_ termios; int consumed; int bufsize; TYPE_1__ pty; } ;
 int _ENOTTY ;
 int lock (int *) ;
 int notify (int *) ;
 int pty_master ;
 int tty_set_winsize (struct tty*,struct winsize_) ;
 int unlock (int *) ;

__attribute__((used)) static int tty_mode_ioctl(struct tty *in_tty, int cmd, void *arg) {
    int err = 0;
    struct tty *tty = in_tty;
    if (in_tty->driver == &pty_master) {
        tty = in_tty->pty.other;
        lock(&tty->lock);
    }

    switch (cmd) {
        case 133:
            *(struct termios_ *) arg = tty->termios;
            break;
        case 132:
            tty->bufsize = 0;
            notify(&tty->consumed);
        case 131:

        case 130:
            tty->termios = *(struct termios_ *) arg;
            break;

        case 129:
            *(struct winsize_ *) arg = tty->winsize;
            break;
        case 128:
            tty_set_winsize(tty, *(struct winsize_ *) arg);
            break;

        default:
            err = _ENOTTY;
            break;
    }

    if (in_tty->driver == &pty_master)
        unlock(&tty->lock);
    return err;
}
