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
struct TYPE_2__ {struct tty* other; } ;
struct tty {int refcount; int /*<<< orphan*/  lock; scalar_t__ ever_opened; TYPE_1__ pty; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pty_master ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct tty *tty) {
    if (tty->driver != &pty_master)
        return false;

    struct tty *slave = tty->pty.other;
    // only time one tty lock is nested in another
    FUNC0(&slave->lock);
    bool half_closed = slave->ever_opened && slave->refcount == 1;
    FUNC1(&slave->lock);
    return half_closed;
}