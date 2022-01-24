#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  spurious_irqs; } ;
struct TYPE_3__ {unsigned int (* get_irq ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ irq_stat ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__ ppc_md ; 
 unsigned int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC8 (struct pt_regs*) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct pt_regs *regs)
{
	unsigned int irq;

	FUNC3();

	FUNC7(regs);

	FUNC1();

	/*
	 * Query the platform PIC for the interrupt & ack it.
	 *
	 * This will typically lower the interrupt line to the CPU
	 */
	irq = ppc_md.get_irq();

	/* We can hard enable interrupts now to allow perf interrupts */
	FUNC5();

	/* And finally process it */
	if (FUNC9(!irq))
		FUNC0(irq_stat.spurious_irqs);
	else
		FUNC2(irq);

	FUNC8(regs);

	FUNC4();
}