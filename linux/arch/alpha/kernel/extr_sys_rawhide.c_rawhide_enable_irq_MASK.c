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
struct irq_data {unsigned int irq; } ;

/* Variables and functions */
 unsigned int* cached_irq_masks ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  rawhide_irq_lock ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void 
FUNC4(struct irq_data *d)
{
	unsigned int mask, hose;
	unsigned int irq = d->irq;

	irq -= 16;
	hose = irq / 24;
	if (!FUNC0(hose)) /* if hose non-existent, exit */
		return;

	irq -= hose * 24;
	mask = 1 << irq;

	FUNC2(&rawhide_irq_lock);
	mask |= cached_irq_masks[hose];
	cached_irq_masks[hose] = mask;
	FUNC1(hose, mask);
	FUNC3(&rawhide_irq_lock);
}