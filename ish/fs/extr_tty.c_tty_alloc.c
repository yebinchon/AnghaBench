
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_driver {int dummy; } ;
struct TYPE_2__ {int iflags; int oflags; int lflags; int cc; scalar_t__ cflags; } ;
struct tty {int type; int num; int hung_up; int ever_opened; scalar_t__ packet_flags; scalar_t__ bufsize; int * buf_flag; int consumed; int produced; int fds_lock; int lock; int winsize; TYPE_1__ termios; int fds; scalar_t__ fg_group; scalar_t__ session; struct tty_driver* driver; scalar_t__ refcount; } ;


 int ECHOCTL_ ;
 int ECHOE_ ;
 int ECHOKE_ ;
 int ECHOK_ ;
 int ECHO_ ;
 int ICANON_ ;
 int ICRNL_ ;
 int IEXTEN_ ;
 int ISIG_ ;
 int IXON_ ;
 int ONLCR_ ;
 int OPOST_ ;
 int cond_init (int *) ;
 int list_init (int *) ;
 int lock_init (int *) ;
 struct tty* malloc (int) ;
 int memcpy (int ,char*,int) ;
 int memset (int *,int,int) ;

struct tty *tty_alloc(struct tty_driver *driver, int type, int num) {
    struct tty *tty = malloc(sizeof(struct tty));
    if (tty == ((void*)0))
        return ((void*)0);

    tty->refcount = 0;
    tty->driver = driver;
    tty->type = type;
    tty->num = num;
    tty->hung_up = 0;
    tty->ever_opened = 0;
    tty->session = 0;
    tty->fg_group = 0;
    list_init(&tty->fds);

    tty->termios.iflags = ICRNL_ | IXON_;
    tty->termios.oflags = OPOST_ | ONLCR_;
    tty->termios.cflags = 0;
    tty->termios.lflags = ISIG_ | ICANON_ | ECHO_ | ECHOE_ | ECHOK_ | ECHOCTL_ | ECHOKE_ | IEXTEN_;

    memcpy(tty->termios.cc, "\003\034\177\025\004\0\1\0\021\023\032\0\022\017\027\026\0\0\0", 19);
    memset(&tty->winsize, 0, sizeof(tty->winsize));

    lock_init(&tty->lock);
    lock_init(&tty->fds_lock);
    cond_init(&tty->produced);
    cond_init(&tty->consumed);
    memset(tty->buf_flag, 0, sizeof(tty->buf_flag));
    tty->bufsize = 0;
    tty->packet_flags = 0;

    return tty;
}
