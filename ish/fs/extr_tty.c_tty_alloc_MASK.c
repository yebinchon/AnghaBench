#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_driver {int dummy; } ;
struct TYPE_2__ {int iflags; int oflags; int lflags; int /*<<< orphan*/  cc; scalar_t__ cflags; } ;
struct tty {int type; int num; int hung_up; int ever_opened; scalar_t__ packet_flags; scalar_t__ bufsize; int /*<<< orphan*/ * buf_flag; int /*<<< orphan*/  consumed; int /*<<< orphan*/  produced; int /*<<< orphan*/  fds_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  winsize; TYPE_1__ termios; int /*<<< orphan*/  fds; scalar_t__ fg_group; scalar_t__ session; struct tty_driver* driver; scalar_t__ refcount; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tty* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 

struct tty *FUNC6(struct tty_driver *driver, int type, int num) {
    struct tty *tty = FUNC3(sizeof(struct tty));
    if (tty == NULL)
        return NULL;

    tty->refcount = 0;
    tty->driver = driver;
    tty->type = type;
    tty->num = num;
    tty->hung_up = false;
    tty->ever_opened = false;
    tty->session = 0;
    tty->fg_group = 0;
    FUNC1(&tty->fds);

    tty->termios.iflags = ICRNL_ | IXON_;
    tty->termios.oflags = OPOST_ | ONLCR_;
    tty->termios.cflags = 0;
    tty->termios.lflags = ISIG_ | ICANON_ | ECHO_ | ECHOE_ | ECHOK_ | ECHOCTL_ | ECHOKE_ | IEXTEN_;
    // from include/asm-generic/termios.h
    FUNC4(tty->termios.cc, "\003\034\177\025\004\0\1\0\021\023\032\0\022\017\027\026\0\0\0", 19);
    FUNC5(&tty->winsize, 0, sizeof(tty->winsize));

    FUNC2(&tty->lock);
    FUNC2(&tty->fds_lock);
    FUNC0(&tty->produced);
    FUNC0(&tty->consumed);
    FUNC5(tty->buf_flag, false, sizeof(tty->buf_flag));
    tty->bufsize = 0;
    tty->packet_flags = 0;

    return tty;
}