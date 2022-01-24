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
struct binder_thread {int dummy; } ;
struct binder_proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct binder_thread* FUNC0 (struct binder_proc*,struct binder_thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_thread*) ; 
 struct binder_thread* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct binder_thread *FUNC5(struct binder_proc *proc)
{
	struct binder_thread *thread;
	struct binder_thread *new_thread;

	FUNC1(proc);
	thread = FUNC0(proc, NULL);
	FUNC2(proc);
	if (!thread) {
		new_thread = FUNC4(sizeof(*thread), GFP_KERNEL);
		if (new_thread == NULL)
			return NULL;
		FUNC1(proc);
		thread = FUNC0(proc, new_thread);
		FUNC2(proc);
		if (thread != new_thread)
			FUNC3(new_thread);
	}
	return thread;
}