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
struct task_struct {int dummy; } ;
struct stack_info {unsigned long* end; int /*<<< orphan*/  type; int /*<<< orphan*/  next_sp; int /*<<< orphan*/  member_0; } ;
struct pt_regs {unsigned long ip; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned long FUNC4 (struct task_struct*,int*,unsigned long,unsigned long*) ; 
 scalar_t__ FUNC5 (unsigned long*,struct task_struct*,struct stack_info*,unsigned long*) ; 
 unsigned long* FUNC6 (struct task_struct*,struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct stack_info*,struct pt_regs*,int) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 struct pt_regs* FUNC11 (struct unwind_state*,int*) ; 
 unsigned long* FUNC12 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC13 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC14 (struct unwind_state*,struct task_struct*,struct pt_regs*,unsigned long*) ; 

void FUNC15(struct task_struct *task, struct pt_regs *regs,
			unsigned long *stack, char *log_lvl)
{
	struct unwind_state state;
	struct stack_info stack_info = {0};
	unsigned long visit_mask = 0;
	int graph_idx = 0;
	bool partial = false;

	FUNC7("%sCall Trace:\n", log_lvl);

	FUNC14(&state, task, regs, stack);
	stack = stack ? : FUNC6(task, regs);
	regs = FUNC11(&state, &partial);

	/*
	 * Iterate through the stacks, starting with the current stack pointer.
	 * Each stack has a pointer to the next one.
	 *
	 * x86-64 can have several stacks:
	 * - task stack
	 * - interrupt stack
	 * - HW exception stacks (double fault, nmi, debug, mce)
	 * - entry stack
	 *
	 * x86-32 can have up to four stacks:
	 * - task stack
	 * - softirq stack
	 * - hardirq stack
	 * - entry stack
	 */
	for ( ; stack; stack = FUNC1(stack_info.next_sp, sizeof(long))) {
		const char *stack_name;

		if (FUNC5(stack, task, &stack_info, &visit_mask)) {
			/*
			 * We weren't on a valid stack.  It's possible that
			 * we overflowed a valid stack into a guard page.
			 * See if the next page up is valid so that we can
			 * generate some kind of backtrace if this happens.
			 */
			stack = (unsigned long *)FUNC0((unsigned long)stack);
			if (FUNC5(stack, task, &stack_info, &visit_mask))
				break;
		}

		stack_name = FUNC10(stack_info.type);
		if (stack_name)
			FUNC7("%s <%s>\n", log_lvl, stack_name);

		if (regs)
			FUNC9(&stack_info, regs, partial);

		/*
		 * Scan the stack, printing any text addresses we find.  At the
		 * same time, follow proper stack frames with the unwinder.
		 *
		 * Addresses found during the scan which are not reported by
		 * the unwinder are considered to be additional clues which are
		 * sometimes useful for debugging and are prefixed with '?'.
		 * This also serves as a failsafe option in case the unwinder
		 * goes off in the weeds.
		 */
		for (; stack < stack_info.end; stack++) {
			unsigned long real_addr;
			int reliable = 0;
			unsigned long addr = FUNC2(*stack);
			unsigned long *ret_addr_p =
				FUNC12(&state);

			if (!FUNC3(addr))
				continue;

			/*
			 * Don't print regs->ip again if it was already printed
			 * by show_regs_if_on_stack().
			 */
			if (regs && stack == &regs->ip)
				goto next;

			if (stack == ret_addr_p)
				reliable = 1;

			/*
			 * When function graph tracing is enabled for a
			 * function, its return address on the stack is
			 * replaced with the address of an ftrace handler
			 * (return_to_handler).  In that case, before printing
			 * the "real" address, we want to print the handler
			 * address as an "unreliable" hint that function graph
			 * tracing was involved.
			 */
			real_addr = FUNC4(task, &graph_idx,
							  addr, stack);
			if (real_addr != addr)
				FUNC8(addr, 0, log_lvl);
			FUNC8(real_addr, reliable, log_lvl);

			if (!reliable)
				continue;

next:
			/*
			 * Get the next frame from the unwinder.  No need to
			 * check for an error: if anything goes wrong, the rest
			 * of the addresses will just be printed as unreliable.
			 */
			FUNC13(&state);

			/* if the frame has entry regs, print them */
			regs = FUNC11(&state, &partial);
			if (regs)
				FUNC9(&stack_info, regs, partial);
		}

		if (stack_name)
			FUNC7("%s </%s>\n", log_lvl, stack_name);
	}
}