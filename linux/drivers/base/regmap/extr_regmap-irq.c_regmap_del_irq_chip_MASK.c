#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap_irq_chip_data {struct regmap_irq_chip_data* status_buf; struct regmap_irq_chip_data* status_reg_buf; struct regmap_irq_chip_data* mask_buf; struct regmap_irq_chip_data* mask_buf_def; struct regmap_irq_chip_data* wake_buf; struct regmap_irq_chip_data* type_buf_def; struct regmap_irq_chip_data* type_buf; int /*<<< orphan*/  domain; TYPE_2__* chip; } ;
struct TYPE_4__ {int num_irqs; TYPE_1__* irqs; } ;
struct TYPE_3__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct regmap_irq_chip_data*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap_irq_chip_data*) ; 

void FUNC5(int irq, struct regmap_irq_chip_data *d)
{
	unsigned int virq;
	int hwirq;

	if (!d)
		return;

	FUNC0(irq, d);

	/* Dispose all virtual irq from irq domain before removing it */
	for (hwirq = 0; hwirq < d->chip->num_irqs; hwirq++) {
		/* Ignore hwirq if holes in the IRQ list */
		if (!d->chip->irqs[hwirq].mask)
			continue;

		/*
		 * Find the virtual irq of hwirq on chip and if it is
		 * there then dispose it
		 */
		virq = FUNC3(d->domain, hwirq);
		if (virq)
			FUNC1(virq);
	}

	FUNC2(d->domain);
	FUNC4(d->type_buf);
	FUNC4(d->type_buf_def);
	FUNC4(d->wake_buf);
	FUNC4(d->mask_buf_def);
	FUNC4(d->mask_buf);
	FUNC4(d->status_reg_buf);
	FUNC4(d->status_buf);
	FUNC4(d);
}