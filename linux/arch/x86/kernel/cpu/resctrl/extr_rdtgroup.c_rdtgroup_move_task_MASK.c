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
struct task_struct {int dummy; } ;
struct rdtgroup {int dummy; } ;
struct kernfs_open_file {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ESRCH ; 
 int FUNC0 (struct task_struct*,struct rdtgroup*) ; 
 struct task_struct* current ; 
 struct task_struct* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 
 int FUNC7 (struct task_struct*,struct kernfs_open_file*) ; 

__attribute__((used)) static int FUNC8(pid_t pid, struct rdtgroup *rdtgrp,
			      struct kernfs_open_file *of)
{
	struct task_struct *tsk;
	int ret;

	FUNC4();
	if (pid) {
		tsk = FUNC1(pid);
		if (!tsk) {
			FUNC5();
			FUNC6("No task %d\n", pid);
			return -ESRCH;
		}
	} else {
		tsk = current;
	}

	FUNC2(tsk);
	FUNC5();

	ret = FUNC7(tsk, of);
	if (!ret)
		ret = FUNC0(tsk, rdtgrp);

	FUNC3(tsk);
	return ret;
}