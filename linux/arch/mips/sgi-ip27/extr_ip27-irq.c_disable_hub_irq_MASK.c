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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct hub_irq_data {int /*<<< orphan*/ * irq_mask; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 struct hub_irq_data* FUNC2 (struct irq_data*) ; 
 int /*<<< orphan*/  irq_enable_mask ; 
 unsigned long* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct irq_data *d)
{
	struct hub_irq_data *hd = FUNC2(d);
	unsigned long *mask = FUNC3(irq_enable_mask, hd->cpu);

	FUNC1(d->hwirq, mask);
	FUNC0(mask[0], hd->irq_mask[0]);
	FUNC0(mask[1], hd->irq_mask[1]);
}