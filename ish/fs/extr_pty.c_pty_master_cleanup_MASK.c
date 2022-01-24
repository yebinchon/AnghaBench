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
struct tty {int /*<<< orphan*/  lock; TYPE_1__ pty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty *tty) {
    struct tty *slave = tty->pty.other;
    slave->pty.other = NULL;
    FUNC0(&slave->lock);
    FUNC1(slave);
    FUNC3(&slave->lock);
    FUNC2(slave);
}