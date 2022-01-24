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
 int IRQ_HANDLED ; 
 unsigned int NO_IRQ_IGNORE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 struct pt_regs* FUNC6 (struct pt_regs*) ; 

int FUNC7(unsigned int irq, struct pt_regs *regs)
{
	struct pt_regs *old_regs = FUNC6(regs);

	FUNC2();

	irq = FUNC1(FUNC5(irq));

	if (irq != NO_IRQ_IGNORE) {
		FUNC0(irq);
		FUNC4(irq);
	}

	FUNC3();

	FUNC6(old_regs);

	return IRQ_HANDLED;
}