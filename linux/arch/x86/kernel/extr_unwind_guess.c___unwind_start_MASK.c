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
struct unwind_state {int /*<<< orphan*/  stack_info; int /*<<< orphan*/  stack_mask; struct task_struct* task; int /*<<< orphan*/  sp; } ;
struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct unwind_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct unwind_state*) ; 

void FUNC7(struct unwind_state *state, struct task_struct *task,
		    struct pt_regs *regs, unsigned long *first_frame)
{
	FUNC3(state, 0, sizeof(*state));

	state->task = task;
	state->sp   = FUNC0(first_frame, sizeof(long));

	FUNC2(first_frame, state->task, &state->stack_info,
		       &state->stack_mask);

	/*
	 * The caller can provide the address of the first frame directly
	 * (first_frame) or indirectly (regs->sp) to indicate which stack frame
	 * to start unwinding at.  Skip ahead until we reach it.
	 */
	if (!FUNC5(state) &&
	    (!FUNC4(&state->stack_info, first_frame, sizeof(long)) ||
	    !FUNC1(*first_frame)))
		FUNC6(state);
}