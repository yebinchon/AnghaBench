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
struct apic_chip_data {scalar_t__ has_reserved; scalar_t__ is_managed; int /*<<< orphan*/  can_reserve; } ;

/* Variables and functions */
 int FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct irq_data*) ; 
 struct apic_chip_data* FUNC2 (struct irq_data*) ; 
 scalar_t__ FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  vector_lock ; 

__attribute__((used)) static int FUNC8(struct irq_domain *dom, struct irq_data *irqd,
			       bool reserve)
{
	struct apic_chip_data *apicd = FUNC2(irqd);
	unsigned long flags;
	int ret = 0;

	FUNC6(irqd->irq, apicd->is_managed,
			      apicd->can_reserve, reserve);

	/* Nothing to do for fixed assigned vectors */
	if (!apicd->can_reserve && !apicd->is_managed)
		return 0;

	FUNC4(&vector_lock, flags);
	if (reserve || FUNC3(irqd))
		FUNC7(irqd);
	else if (apicd->is_managed)
		ret = FUNC0(irqd);
	else if (apicd->has_reserved)
		ret = FUNC1(irqd);
	FUNC5(&vector_lock, flags);
	return ret;
}