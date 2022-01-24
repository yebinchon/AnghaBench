#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  type; } ;
struct unwind_state {unsigned long* next_bp; unsigned long* bp; TYPE_1__ stack_info; int /*<<< orphan*/  stack_mask; struct task_struct* task; struct pt_regs* got_irq; } ;
struct task_struct {int dummy; } ;
struct pt_regs {scalar_t__ ip; scalar_t__ sp; } ;

/* Variables and functions */
 int /*<<< orphan*/  STACK_TYPE_UNKNOWN ; 
 unsigned long* FUNC0 (struct task_struct*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,struct task_struct*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct unwind_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct unwind_state*,unsigned long*) ; 
 scalar_t__ FUNC7 (struct pt_regs*) ; 

void FUNC8(struct unwind_state *state, struct task_struct *task,
		    struct pt_regs *regs, unsigned long *first_frame)
{
	unsigned long *bp;

	FUNC2(state, 0, sizeof(*state));
	state->task = task;
	state->got_irq = (regs);

	/* Don't even attempt to start from user mode regs: */
	if (regs && FUNC7(regs)) {
		state->stack_info.type = STACK_TYPE_UNKNOWN;
		return;
	}

	bp = FUNC0(task, regs);

	/*
	 * If we crash with IP==0, the last successfully executed instruction
	 * was probably an indirect function call with a NULL function pointer.
	 * That means that SP points into the middle of an incomplete frame:
	 * *SP is a return pointer, and *(SP-sizeof(unsigned long)) is where we
	 * would have written a frame pointer if we hadn't crashed.
	 * Pretend that the frame is complete and that BP points to it, but save
	 * the real BP so that we can use it when looking for the next frame.
	 */
	if (regs && regs->ip == 0 && (unsigned long *)regs->sp >= first_frame) {
		state->next_bp = bp;
		bp = ((unsigned long *)regs->sp) - 1;
	}

	/* Initialize stack info and make sure the frame data is accessible: */
	FUNC1(bp, state->task, &state->stack_info,
		       &state->stack_mask);
	FUNC6(state, bp);

	/*
	 * The caller can provide the address of the first frame directly
	 * (first_frame) or indirectly (regs->sp) to indicate which stack frame
	 * to start unwinding at.  Skip ahead until we reach it.
	 */
	while (!FUNC4(state) &&
	       (!FUNC3(&state->stack_info, first_frame, sizeof(long)) ||
			(state->next_bp == NULL && state->bp < first_frame)))
		FUNC5(state);
}