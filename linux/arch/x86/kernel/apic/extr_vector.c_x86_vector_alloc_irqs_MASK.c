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
struct irq_data {unsigned int hwirq; struct apic_chip_data* chip_data; int /*<<< orphan*/ * chip; } ;
struct irq_alloc_info {int flags; } ;
struct apic_chip_data {unsigned int irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC1 (struct apic_chip_data*) ; 
 int X86_IRQ_ALLOC_CONTIGUOUS_VECTORS ; 
 int X86_IRQ_ALLOC_LEGACY ; 
 struct apic_chip_data* FUNC2 (int) ; 
 int FUNC3 (struct irq_data*,struct irq_alloc_info*) ; 
 scalar_t__ disable_apic ; 
 int /*<<< orphan*/  FUNC4 (struct apic_chip_data*) ; 
 int FUNC5 (struct irq_data*) ; 
 struct irq_data* FUNC6 (struct irq_domain*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct irq_data*) ; 
 int /*<<< orphan*/  lapic_controller ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int,struct irq_data*,struct apic_chip_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_domain*,unsigned int,int) ; 

__attribute__((used)) static int FUNC11(struct irq_domain *domain, unsigned int virq,
				 unsigned int nr_irqs, void *arg)
{
	struct irq_alloc_info *info = arg;
	struct apic_chip_data *apicd;
	struct irq_data *irqd;
	int i, err, node;

	if (disable_apic)
		return -ENXIO;

	/* Currently vector allocator can't guarantee contiguous allocations */
	if ((info->flags & X86_IRQ_ALLOC_CONTIGUOUS_VECTORS) && nr_irqs > 1)
		return -ENOSYS;

	for (i = 0; i < nr_irqs; i++) {
		irqd = FUNC6(domain, virq + i);
		FUNC0(!irqd);
		node = FUNC5(irqd);
		FUNC1(irqd->chip_data);
		apicd = FUNC2(node);
		if (!apicd) {
			err = -ENOMEM;
			goto error;
		}

		apicd->irq = virq + i;
		irqd->chip = &lapic_controller;
		irqd->chip_data = apicd;
		irqd->hwirq = virq + i;
		FUNC7(irqd);
		/*
		 * Legacy vectors are already assigned when the IOAPIC
		 * takes them over. They stay on the same vector. This is
		 * required for check_timer() to work correctly as it might
		 * switch back to legacy mode. Only update the hardware
		 * config.
		 */
		if (info->flags & X86_IRQ_ALLOC_LEGACY) {
			if (!FUNC9(virq + i, irqd, apicd))
				continue;
		}

		err = FUNC3(irqd, info);
		FUNC8(virq + i, false, err);
		if (err) {
			irqd->chip_data = NULL;
			FUNC4(apicd);
			goto error;
		}
	}

	return 0;

error:
	FUNC10(domain, virq, i);
	return err;
}