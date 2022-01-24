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
typedef  unsigned int* vuip ;
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int* cached_irq_masks ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int* hose_irq_masks ; 
 int /*<<< orphan*/  rawhide_irq_lock ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct irq_data *d)
{
	unsigned int mask, mask1, hose;
	unsigned int irq = d->irq;

	irq -= 16;
	hose = irq / 24;
	if (!FUNC2(hose)) /* if hose non-existent, exit */
		return;

	irq -= hose * 24;
	mask1 = 1 << irq;
	mask = ~mask1 | hose_irq_masks[hose];

	FUNC4(&rawhide_irq_lock);

	mask &= cached_irq_masks[hose];
	cached_irq_masks[hose] = mask;
	FUNC3(hose, mask);

	/* Clear the interrupt.  */
	*(vuip)FUNC1(FUNC0(hose)) = mask1;

	FUNC5(&rawhide_irq_lock);
}