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
struct pt_regs {int dummy; } ;

/* Variables and functions */
 unsigned int backtrace_limit ; 
 int /*<<< orphan*/  backtrace_ops ; 
 scalar_t__ FUNC0 (struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pt_regs* const,unsigned long*,int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned long* FUNC2 (unsigned long*,struct pt_regs* const) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs* const) ; 

void FUNC4(struct pt_regs * const regs, unsigned int depth)
{
	unsigned long *stackaddr;

	/*
	 * Paranoia - clip max depth as we could get lost in the weeds.
	 */
	if (depth > backtrace_limit)
		depth = backtrace_limit;

	stackaddr = (unsigned long *)FUNC0(regs);
	if (!FUNC3(regs)) {
		if (depth)
			FUNC1(NULL, regs, stackaddr,
				     &backtrace_ops, &depth);
		return;
	}

	while (depth-- && (stackaddr != NULL))
		stackaddr = FUNC2(stackaddr, regs);
}