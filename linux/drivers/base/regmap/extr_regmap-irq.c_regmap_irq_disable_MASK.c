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
struct regmap_irq_chip_data {int /*<<< orphan*/ * mask_buf; struct regmap* map; } ;
struct regmap_irq {size_t reg_offset; int /*<<< orphan*/  mask; } ;
struct regmap {size_t reg_stride; } ;
struct irq_data {int /*<<< orphan*/  hwirq; } ;

/* Variables and functions */
 struct regmap_irq_chip_data* FUNC0 (struct irq_data*) ; 
 struct regmap_irq* FUNC1 (struct regmap_irq_chip_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct irq_data *data)
{
	struct regmap_irq_chip_data *d = FUNC0(data);
	struct regmap *map = d->map;
	const struct regmap_irq *irq_data = FUNC1(d, data->hwirq);

	d->mask_buf[irq_data->reg_offset / map->reg_stride] |= irq_data->mask;
}