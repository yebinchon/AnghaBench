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
struct tgroup {int /*<<< orphan*/  pgroup; scalar_t__ timer; int /*<<< orphan*/  threads; } ;
struct task {int /*<<< orphan*/  group_links; struct tgroup* group; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct task*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct task *task) {
    struct tgroup *group = task->group;
    FUNC1(&task->group_links);
    bool group_dead = FUNC0(&group->threads);
    if (group_dead) {
        // don't need to lock the group since the only pointers it come from:
        // - other threads current->group, but the other threads have accessed it
        // - locking pids_lock first, which do_exit did
        if (group->timer)
            FUNC3(group->timer);
        FUNC2(task);
        FUNC1(&group->pgroup);
    }
    return group_dead;
}