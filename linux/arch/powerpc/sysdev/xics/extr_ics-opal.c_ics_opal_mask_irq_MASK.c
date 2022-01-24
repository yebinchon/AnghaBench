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
struct irq_data {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 unsigned int XICS_IPI ; 
 unsigned int XICS_IRQ_SPURIOUS ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct irq_data *d)
{
	unsigned int hw_irq = (unsigned int)FUNC1(d);

	FUNC2("ics-hal: mask virq %d [hw 0x%x]\n", d->irq, hw_irq);

	if (hw_irq == XICS_IPI || hw_irq == XICS_IRQ_SPURIOUS)
		return;
	FUNC0(hw_irq);
}