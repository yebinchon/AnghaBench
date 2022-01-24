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
struct task {int dummy; } ;
struct proc_entry {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct task* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pids_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct task *FUNC3(struct proc_entry *entry) {
    FUNC0(&pids_lock);
    struct task *task = FUNC1(entry->pid);
    if (task == NULL)
        FUNC2(&pids_lock);
    return task;
}