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

/* Variables and functions */
 int ADM5120_INTC_IRQ_BASE ; 
 unsigned long INTC_INT_ALL ; 
 int /*<<< orphan*/  INTC_REG_IRQ_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long status;
	int irq;

	status = FUNC2(INTC_REG_IRQ_STATUS) & INTC_INT_ALL;
	if (status) {
		irq = ADM5120_INTC_IRQ_BASE + FUNC1(status) - 1;
		FUNC0(irq);
	} else
		FUNC3();
}