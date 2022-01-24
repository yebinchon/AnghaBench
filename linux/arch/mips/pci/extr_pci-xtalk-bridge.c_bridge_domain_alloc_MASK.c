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
struct irq_alloc_info {int /*<<< orphan*/  pin; int /*<<< orphan*/  nasid; int /*<<< orphan*/  ctrl; } ;
struct bridge_irq_chip_data {int /*<<< orphan*/  nasid; int /*<<< orphan*/  bc; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bridge_irq_chip ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int FUNC0 (struct irq_domain*,unsigned int,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bridge_irq_chip_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_irq_chip_data*) ; 
 struct bridge_irq_chip_data* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct irq_domain *domain, unsigned int virq,
			       unsigned int nr_irqs, void *arg)
{
	struct bridge_irq_chip_data *data;
	struct irq_alloc_info *info = arg;
	int ret;

	if (nr_irqs > 1 || !info)
		return -EINVAL;

	data = FUNC3(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	ret = FUNC0(domain, virq, nr_irqs, arg);
	if (ret >= 0) {
		data->bc = info->ctrl;
		data->nasid = info->nasid;
		FUNC1(domain, virq, info->pin, &bridge_irq_chip,
				    data, handle_level_irq, NULL, NULL);
	} else {
		FUNC2(data);
	}

	return ret;
}