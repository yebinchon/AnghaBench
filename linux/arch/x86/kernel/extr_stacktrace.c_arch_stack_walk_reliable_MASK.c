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
struct unwind_state {int dummy; } ;
struct task_struct {int flags; } ;
struct pt_regs {int dummy; } ;
typedef  int /*<<< orphan*/  (* stack_trace_consume_fn ) (void*,unsigned long,int) ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_FRAME_POINTER ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PF_IDLE ; 
 int PF_KTHREAD ; 
 int /*<<< orphan*/  FUNC1 (struct unwind_state*) ; 
 scalar_t__ FUNC2 (struct unwind_state*) ; 
 struct pt_regs* FUNC3 (struct unwind_state*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC4 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct unwind_state*,struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct pt_regs*) ; 

int FUNC8(stack_trace_consume_fn consume_entry,
			     void *cookie, struct task_struct *task)
{
	struct unwind_state state;
	struct pt_regs *regs;
	unsigned long addr;

	for (FUNC6(&state, task, NULL, NULL);
	     !FUNC1(&state) && !FUNC2(&state);
	     FUNC5(&state)) {

		regs = FUNC3(&state, NULL);
		if (regs) {
			/* Success path for user tasks */
			if (FUNC7(regs))
				return 0;

			/*
			 * Kernel mode registers on the stack indicate an
			 * in-kernel interrupt or exception (e.g., preemption
			 * or a page fault), which can make frame pointers
			 * unreliable.
			 */

			if (FUNC0(CONFIG_FRAME_POINTER))
				return -EINVAL;
		}

		addr = FUNC4(&state);

		/*
		 * A NULL or invalid return address probably means there's some
		 * generated code which __kernel_text_address() doesn't know
		 * about.
		 */
		if (!addr)
			return -EINVAL;

		if (!consume_entry(cookie, addr, false))
			return -EINVAL;
	}

	/* Check for stack corruption */
	if (FUNC2(&state))
		return -EINVAL;

	/* Success path for non-user tasks, i.e. kthreads and idle tasks */
	if (!(task->flags & (PF_KTHREAD | PF_IDLE)))
		return -EINVAL;

	return 0;
}