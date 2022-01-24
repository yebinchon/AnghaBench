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
typedef  scalar_t__ pid_t_ ;
struct TYPE_4__ {scalar_t__ pid; TYPE_1__* group; } ;
struct TYPE_3__ {scalar_t__ pgid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ _EPERM ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pids_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

pid_t_ FUNC3(pid_t_ pid) {
    FUNC0("getpgid(%d)", pid);
    if (pid != 0 && pid != current->pid)
        return _EPERM;
    FUNC1(&pids_lock);
    pid_t_ pgid = current->group->pgid;
    FUNC2(&pids_lock);
    return pgid;
}