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
struct binder_thread {int /*<<< orphan*/  wait; int /*<<< orphan*/  waiting_thread_node; struct binder_proc* proc; } ;
struct binder_proc {int /*<<< orphan*/  waiting_threads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC1 (struct binder_thread*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_proc*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC12(struct binder_thread *thread,
				bool do_proc_work)
{
	FUNC0(wait);
	struct binder_proc *proc = thread->proc;
	int ret = 0;

	FUNC6();
	FUNC2(proc);
	for (;;) {
		FUNC9(&thread->wait, &wait, TASK_INTERRUPTIBLE);
		if (FUNC1(thread, do_proc_work))
			break;
		if (do_proc_work)
			FUNC7(&thread->waiting_thread_node,
				 &proc->waiting_threads);
		FUNC3(proc);
		FUNC10();
		FUNC2(proc);
		FUNC8(&thread->waiting_thread_node);
		if (FUNC11(current)) {
			ret = -ERESTARTSYS;
			break;
		}
	}
	FUNC4(&thread->wait, &wait);
	FUNC3(proc);
	FUNC5();

	return ret;
}