#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rusage_ {int dummy; } ;
struct task {TYPE_2__* group; struct rusage_ exit_code; int /*<<< orphan*/  zombie; } ;
typedef  struct rusage_ dword_t ;
typedef  scalar_t__ addr_t ;
struct TYPE_6__ {TYPE_1__* group; } ;
struct TYPE_5__ {int /*<<< orphan*/  child_exit; int /*<<< orphan*/  lock; struct rusage_ rusage; struct rusage_ group_exit_code; scalar_t__ doing_group_exit; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  children_rusage; } ;

/* Variables and functions */
 int _EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rusage_*) ; 
 int /*<<< orphan*/  FUNC4 (struct task*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,struct rusage_) ; 

__attribute__((used)) static bool FUNC7(struct task *task, addr_t status_addr, addr_t rusage_addr) {
    if (!task->zombie)
        return false;
    FUNC2(&task->group->lock);

    dword_t exit_code = task->exit_code;
    if (task->group->doing_group_exit)
        exit_code = task->group->group_exit_code;
    if (status_addr != 0)
        if (FUNC6(status_addr, exit_code))
            return _EFAULT;

    struct rusage_ rusage = task->group->rusage;
    FUNC2(&current->group->lock);
    FUNC3(&current->group->children_rusage, &rusage);
    FUNC5(&current->group->lock);
    if (rusage_addr != 0)
        if (FUNC6(rusage_addr, rusage))
            return _EFAULT;

    FUNC5(&task->group->lock);
    FUNC0(&task->group->child_exit);
    FUNC1(task->group);
    FUNC4(task);
    return true;
}