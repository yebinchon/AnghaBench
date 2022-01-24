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
struct stack_frame {int dummy; } ;
struct pt_regs {unsigned long ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 struct stack_frame* FUNC0 (struct stack_frame*) ; 
 scalar_t__ FUNC1 (struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct unwind_state*) ; 
 unsigned long FUNC4 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct unwind_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct unwind_state*,int /*<<< orphan*/ ,struct pt_regs* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs* const) ; 
 scalar_t__ FUNC8 (struct pt_regs* const,unsigned int) ; 

void
FUNC9(struct pt_regs * const regs, unsigned int depth)
{
	struct stack_frame *head = (struct stack_frame *)FUNC1(regs);

	if (!FUNC7(regs)) {
		struct unwind_state state;
		unsigned long addr;

		if (!depth)
			return;

		FUNC2(regs->ip);

		if (!--depth)
			return;

		for (FUNC6(&state, current, regs, NULL);
		     !FUNC3(&state); FUNC5(&state)) {
			addr = FUNC4(&state);
			if (!addr)
				break;

			FUNC2(addr);

			if (!--depth)
				break;
		}

		return;
	}

	if (FUNC8(regs, depth))
		return;

	while (depth-- && head)
		head = FUNC0(head);
}