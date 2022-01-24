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
struct regmap_irq_chip_data {int dummy; } ;
struct regmap_irq_chip {int dummy; } ;
struct regmap {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_regmap_irq_chip_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct regmap_irq_chip_data**) ; 
 struct regmap_irq_chip_data** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap_irq_chip_data**) ; 
 int FUNC3 (struct regmap*,int,int,int,struct regmap_irq_chip const*,struct regmap_irq_chip_data**) ; 

int FUNC4(struct device *dev, struct regmap *map, int irq,
			     int irq_flags, int irq_base,
			     const struct regmap_irq_chip *chip,
			     struct regmap_irq_chip_data **data)
{
	struct regmap_irq_chip_data **ptr, *d;
	int ret;

	ptr = FUNC1(devm_regmap_irq_chip_release, sizeof(*ptr),
			   GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	ret = FUNC3(map, irq, irq_flags, irq_base,
				  chip, &d);
	if (ret < 0) {
		FUNC2(ptr);
		return ret;
	}

	*ptr = d;
	FUNC0(dev, ptr);
	*data = d;
	return 0;
}