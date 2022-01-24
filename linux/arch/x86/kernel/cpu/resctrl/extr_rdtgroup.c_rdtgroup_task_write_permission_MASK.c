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
struct task_struct {int /*<<< orphan*/  pid; } ;
struct kernfs_open_file {int dummy; } ;
struct cred {int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 struct cred* FUNC0 () ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct task_struct *task,
					  struct kernfs_open_file *of)
{
	const struct cred *tcred = FUNC1(task);
	const struct cred *cred = FUNC0();
	int ret = 0;

	/*
	 * Even if we're attaching all tasks in the thread group, we only
	 * need to check permissions on one of them.
	 */
	if (!FUNC4(cred->euid, GLOBAL_ROOT_UID) &&
	    !FUNC4(cred->euid, tcred->uid) &&
	    !FUNC4(cred->euid, tcred->suid)) {
		FUNC3("No permission to move task %d\n", task->pid);
		ret = -EPERM;
	}

	FUNC2(tcred);
	return ret;
}