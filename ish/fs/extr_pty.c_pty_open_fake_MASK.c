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
struct tty_driver {int /*<<< orphan*/  limit; int /*<<< orphan*/  ttys; } ;
struct tty {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  limit; int /*<<< orphan*/  ttys; } ;

/* Variables and functions */
 struct tty* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tty*) ; 
 int MAX_PTYS ; 
 int /*<<< orphan*/  TTY_PSEUDO_SLAVE_MAJOR ; 
 int /*<<< orphan*/  _ENOSPC ; 
 int FUNC2 () ; 
 TYPE_1__ pty_slave ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 struct tty* FUNC4 (struct tty_driver*,int /*<<< orphan*/ ,int) ; 

struct tty *FUNC5(struct tty_driver *driver) {
    int pty_num = FUNC2();
    if (pty_num == MAX_PTYS)
        return FUNC0(_ENOSPC);
    // TODO this is a bit of a hack
    driver->ttys = pty_slave.ttys;
    driver->limit = pty_slave.limit;
    struct tty *tty = FUNC4(driver, TTY_PSEUDO_SLAVE_MAJOR, pty_num);
    if (FUNC1(tty))
        return tty;
    FUNC3(tty);
    return tty;
}