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
 int THREAD_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct pt_regs*,void*) ; 
 int FUNC2 () ; 
 void** hardirq_ctx ; 
 size_t FUNC3 () ; 
 struct pt_regs* FUNC4 (struct pt_regs*) ; 
 void** softirq_ctx ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct pt_regs *regs)
{
	struct pt_regs *old_regs = FUNC4(regs);
	void *cursp, *irqsp, *sirqsp;

	/* Switch to the irq stack to handle this */
	cursp = (void *)(FUNC2() & ~(THREAD_SIZE - 1));
	irqsp = hardirq_ctx[FUNC3()];
	sirqsp = softirq_ctx[FUNC3()];

	/* Already there ? */
	if (FUNC5(cursp == irqsp || cursp == sirqsp)) {
		FUNC0(regs);
		FUNC4(old_regs);
		return;
	}
	/* Switch stack and call */
	FUNC1(regs, irqsp);

	FUNC4(old_regs);
}