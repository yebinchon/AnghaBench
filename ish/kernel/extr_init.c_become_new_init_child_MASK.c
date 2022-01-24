#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct task {int /*<<< orphan*/  queue; scalar_t__ waiting; scalar_t__ pending; scalar_t__ blocked; int /*<<< orphan*/ * vfork; scalar_t__ clear_tid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task*) ; 
 int FUNC1 (struct task*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct task* FUNC3 (struct task*) ; 
 struct task* current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct task* FUNC5 (int) ; 

int FUNC6() {
    // locking? who needs locking?!
    struct task *init = FUNC5(1);
    FUNC2(init != NULL);

    struct task *task = FUNC3(init);
    if (FUNC0(task))
        return FUNC1(task);

    // these are things we definitely don't want to inherit
    task->clear_tid = 0;
    task->vfork = NULL;
    task->blocked = task->pending = task->waiting = 0;
    FUNC4(&task->queue);
    // TODO: think about whether it would be a good idea to inherit fs_info

    current = task;
    return 0;
}