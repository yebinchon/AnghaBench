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
struct binder_thread {int /*<<< orphan*/  wait; } ;
struct binder_proc {int /*<<< orphan*/  inner_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_proc*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct binder_proc *proc,
					 struct binder_thread *thread,
					 bool sync)
{
	FUNC0(&proc->inner_lock);

	if (thread) {
		if (sync)
			FUNC3(&thread->wait);
		else
			FUNC2(&thread->wait);
		return;
	}

	/* Didn't find a thread waiting for proc work; this can happen
	 * in two scenarios:
	 * 1. All threads are busy handling transactions
	 *    In that case, one of those threads should call back into
	 *    the kernel driver soon and pick up this work.
	 * 2. Threads are using the (e)poll interface, in which case
	 *    they may be blocked on the waitqueue without having been
	 *    added to waiting_threads. For this case, we just iterate
	 *    over all threads not handling transaction work, and
	 *    wake them all up. We wake all because we don't know whether
	 *    a thread that called into (e)poll is handling non-binder
	 *    work currently.
	 */
	FUNC1(proc, sync);
}