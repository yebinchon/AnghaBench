#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_driver {int /*<<< orphan*/ ** ttys; TYPE_1__* ops; } ;
struct TYPE_4__ {struct tty* other; } ;
struct tty {scalar_t__ refcount; size_t num; int /*<<< orphan*/  lock; TYPE_2__ pty; struct tty_driver* driver; int /*<<< orphan*/  produced; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* cleanup ) (struct tty*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tty_driver pty_slave ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct tty *tty) {
    FUNC2(&tty->lock);
    if (--tty->refcount == 0) {
        struct tty_driver *driver = tty->driver;
        if (driver->ops->cleanup)
            driver->ops->cleanup(tty);
        driver->ttys[tty->num] = NULL;
        FUNC5(&tty->lock);
        FUNC0(&tty->produced);
        FUNC1(tty);
    } else {
        // bit of a hack
        struct tty *master = NULL;
        if (tty->driver == &pty_slave && tty->refcount == 1)
            master = tty->pty.other;
        FUNC5(&tty->lock);
        if (master != NULL) {
            FUNC2(&master->lock);
            FUNC4(master);
            FUNC5(&master->lock);
        }
    }
}