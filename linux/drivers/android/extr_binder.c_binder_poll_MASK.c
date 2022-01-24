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
struct poll_table_struct {int dummy; } ;
struct file {struct binder_proc* private_data; } ;
struct binder_thread {int /*<<< orphan*/  wait; int /*<<< orphan*/  proc; int /*<<< orphan*/  looper; } ;
struct binder_proc {int dummy; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_LOOPER_STATE_POLL ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  POLLERR ; 
 int FUNC0 (struct binder_thread*) ; 
 struct binder_thread* FUNC1 (struct binder_proc*) ; 
 scalar_t__ FUNC2 (struct binder_thread*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static __poll_t FUNC6(struct file *filp,
				struct poll_table_struct *wait)
{
	struct binder_proc *proc = filp->private_data;
	struct binder_thread *thread = NULL;
	bool wait_for_proc_work;

	thread = FUNC1(proc);
	if (!thread)
		return POLLERR;

	FUNC3(thread->proc);
	thread->looper |= BINDER_LOOPER_STATE_POLL;
	wait_for_proc_work = FUNC0(thread);

	FUNC4(thread->proc);

	FUNC5(filp, &thread->wait, wait);

	if (FUNC2(thread, wait_for_proc_work))
		return EPOLLIN;

	return 0;
}