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
struct irq_data {struct apic_chip_data* chip_data; } ;
struct apic_chip_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct apic_chip_data*) ; 
 struct irq_data* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_data*) ; 
 int /*<<< orphan*/  vector_lock ; 
 int /*<<< orphan*/  x86_vector_domain ; 

__attribute__((used)) static void FUNC7(struct irq_domain *domain,
				 unsigned int virq, unsigned int nr_irqs)
{
	struct apic_chip_data *apicd;
	struct irq_data *irqd;
	unsigned long flags;
	int i;

	for (i = 0; i < nr_irqs; i++) {
		irqd = FUNC2(x86_vector_domain, virq + i);
		if (irqd && irqd->chip_data) {
			FUNC4(&vector_lock, flags);
			FUNC0(irqd);
			FUNC6(irqd);
			apicd = irqd->chip_data;
			FUNC3(irqd);
			FUNC5(&vector_lock, flags);
			FUNC1(apicd);
		}
	}
}