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
struct apic_chip_data {int has_reserved; int can_reserve; } ;

/* Variables and functions */
 struct apic_chip_data* FUNC0 (struct irq_data*) ; 
 int FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct irq_data *irqd)
{
	struct apic_chip_data *apicd = FUNC0(irqd);
	int ret;

	ret = FUNC1(irqd);
	if (!ret) {
		apicd->has_reserved = false;
		/*
		 * Core might have disabled reservation mode after
		 * allocating the irq descriptor. Ideally this should
		 * happen before allocation time, but that would require
		 * completely convoluted ways of transporting that
		 * information.
		 */
		if (!FUNC5(irqd))
			apicd->can_reserve = false;
	}

	/*
	 * Check to ensure that the effective affinity mask is a subset
	 * the user supplied affinity mask, and warn the user if it is not
	 */
	if (!FUNC2(FUNC4(irqd),
			    FUNC3(irqd))) {
		FUNC6("irq %u: Affinity broken due to vector space exhaustion.\n",
			irqd->irq);
	}

	return ret;
}