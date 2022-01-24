#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct irq_data {int /*<<< orphan*/  chip_data; TYPE_1__* chip; struct irq_data* parent_data; } ;
struct irq_cfg {int dummy; } ;
struct cpumask {int dummy; } ;
struct TYPE_2__ {int (* irq_set_affinity ) (struct irq_data*,struct cpumask const*,int) ;} ;

/* Variables and functions */
 struct irq_cfg* FUNC0 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_cfg*) ; 
 int FUNC2 (struct irq_data*,struct cpumask const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct irq_cfg*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct irq_data *data, const struct cpumask *mask,
		    bool force)
{
	struct irq_data *parent = data->parent_data;
	struct irq_cfg *cfg = FUNC0(data);
	int ret;

	ret = parent->chip->irq_set_affinity(parent, mask, force);
	if (ret >= 0) {
		FUNC3(cfg, data->chip_data);
		FUNC1(cfg);
	}

	return ret;
}