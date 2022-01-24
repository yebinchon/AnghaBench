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
struct irq_domain {int dummy; } ;
struct irq_data {int /*<<< orphan*/  irq; } ;
struct apic_chip_data {scalar_t__ can_reserve; scalar_t__ has_reserved; int /*<<< orphan*/  is_managed; } ;

/* Variables and functions */
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  vector_lock ; 

__attribute__((used)) static void FUNC7(struct irq_domain *dom, struct irq_data *irqd)
{
	struct apic_chip_data *apicd = FUNC0(irqd);
	unsigned long flags;

	FUNC5(irqd->irq, apicd->is_managed,
				apicd->can_reserve, false);

	/* Regular fixed assigned interrupt */
	if (!apicd->is_managed && !apicd->can_reserve)
		return;
	/* If the interrupt has a global reservation, nothing to do */
	if (apicd->has_reserved)
		return;

	FUNC2(&vector_lock, flags);
	FUNC1(irqd);
	if (apicd->can_reserve)
		FUNC4(irqd);
	else
		FUNC6(irqd);
	FUNC3(&vector_lock, flags);
}