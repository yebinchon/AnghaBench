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
struct io_context {int ioprio; } ;
struct cred {int /*<<< orphan*/  uid; int /*<<< orphan*/  euid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_NICE ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 struct cred* FUNC0 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cred* FUNC2 () ; 
 struct io_context* FUNC3 (struct task_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct io_context*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct task_struct*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(struct task_struct *task, int ioprio)
{
	int err;
	struct io_context *ioc;
	const struct cred *cred = FUNC2(), *tcred;

	FUNC5();
	tcred = FUNC0(task);
	if (!FUNC8(tcred->uid, cred->euid) &&
	    !FUNC8(tcred->uid, cred->uid) && !FUNC1(CAP_SYS_NICE)) {
		FUNC6();
		return -EPERM;
	}
	FUNC6();

	err = FUNC7(task, ioprio);
	if (err)
		return err;

	ioc = FUNC3(task, GFP_ATOMIC, NUMA_NO_NODE);
	if (ioc) {
		ioc->ioprio = ioprio;
		FUNC4(ioc);
	}

	return err;
}