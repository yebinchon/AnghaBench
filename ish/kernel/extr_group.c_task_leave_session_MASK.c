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
struct tgroup {TYPE_1__* tty; int /*<<< orphan*/  sid; int /*<<< orphan*/  session; } ;
struct task {struct tgroup* group; } ;
struct TYPE_4__ {int /*<<< orphan*/  session; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; scalar_t__ session; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  ttys_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct task *task) {
    struct tgroup *group = task->group;
    FUNC1(&group->session);
    if (group->tty) {
        FUNC2(&ttys_lock);
        if (FUNC0(&FUNC3(group->sid)->session)) {
            FUNC2(&group->tty->lock);
            group->tty->session = 0;
            FUNC5(&group->tty->lock);
        }
        FUNC4(group->tty);
        group->tty = NULL;
        FUNC5(&ttys_lock);
    }
}