#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int locked; struct tty* other; } ;
struct TYPE_6__ {scalar_t__ lflags; scalar_t__ oflags; scalar_t__ iflags; } ;
struct tty {size_t num; int refcount; TYPE_1__ pty; TYPE_2__ termios; } ;
struct TYPE_7__ {struct tty** ttys; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_PSEUDO_SLAVE_MAJOR ; 
 TYPE_3__ pty_slave ; 
 int /*<<< orphan*/  FUNC0 (struct tty*) ; 
 struct tty* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC2(struct tty *tty) {
    tty->termios.iflags = 0;
    tty->termios.oflags = 0;
    tty->termios.lflags = 0;

    struct tty *slave = FUNC1(&pty_slave, TTY_PSEUDO_SLAVE_MAJOR, tty->num);
    slave->refcount = 1;
    pty_slave.ttys[tty->num] = slave;
    tty->pty.other = slave;
    slave->pty.other = tty;
    slave->pty.locked = true;
    FUNC0(slave);
    return 0;
}