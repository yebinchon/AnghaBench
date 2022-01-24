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
struct tgroup {scalar_t__ pgid; scalar_t__ sid; int /*<<< orphan*/  pgroup; int /*<<< orphan*/  session; TYPE_1__* leader; } ;
struct task {int /*<<< orphan*/  pid; struct tgroup* group; } ;
struct pid {int /*<<< orphan*/  pgroup; int /*<<< orphan*/  session; } ;
typedef  scalar_t__ pid_t_ ;
struct TYPE_2__ {scalar_t__ pid; } ;

/* Variables and functions */
 scalar_t__ _EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct pid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pids_lock ; 
 int /*<<< orphan*/  FUNC4 (struct task*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

pid_t_ FUNC6(struct task *task) {
    FUNC2(&pids_lock);
    struct tgroup *group = task->group;
    pid_t_ new_sid = group->leader->pid;
    if (group->pgid == new_sid || group->sid == new_sid) {
        FUNC5(&pids_lock);
        return _EPERM;
    }

    FUNC4(task);
    struct pid *pid = FUNC3(task->pid);
    FUNC0(&pid->session, &group->session);
    group->sid = new_sid;

    FUNC1(&group->pgroup);
    FUNC0(&pid->pgroup, &group->pgroup);
    group->pgid = new_sid;

    FUNC5(&pids_lock);
    return new_sid;
}