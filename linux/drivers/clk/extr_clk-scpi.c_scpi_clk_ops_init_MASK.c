#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct clk_init_data* init; } ;
struct scpi_clk {TYPE_2__ hw; int /*<<< orphan*/  id; TYPE_1__* scpi_ops; int /*<<< orphan*/  info; } ;
struct of_device_id {int /*<<< orphan*/ * data; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; int /*<<< orphan*/ * ops; scalar_t__ num_parents; scalar_t__ flags; } ;
struct TYPE_4__ {scalar_t__ (* clk_get_range ) (int /*<<< orphan*/ ,unsigned long*,unsigned long*) ;int /*<<< orphan*/  (* dvfs_get_info ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned long,unsigned long) ; 
 int FUNC3 (struct device*,TYPE_2__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  scpi_clk_ops ; 
 int /*<<< orphan*/  scpi_dvfs_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long*,unsigned long*) ; 

__attribute__((used)) static int
FUNC7(struct device *dev, const struct of_device_id *match,
		  struct scpi_clk *sclk, const char *name)
{
	struct clk_init_data init;
	unsigned long min = 0, max = 0;
	int ret;

	init.name = name;
	init.flags = 0;
	init.num_parents = 0;
	init.ops = match->data;
	sclk->hw.init = &init;
	sclk->scpi_ops = FUNC4();

	if (init.ops == &scpi_dvfs_ops) {
		sclk->info = sclk->scpi_ops->dvfs_get_info(sclk->id);
		if (FUNC0(sclk->info))
			return FUNC1(sclk->info);
	} else if (init.ops == &scpi_clk_ops) {
		if (sclk->scpi_ops->clk_get_range(sclk->id, &min, &max) || !max)
			return -EINVAL;
	} else {
		return -EINVAL;
	}

	ret = FUNC3(dev, &sclk->hw);
	if (!ret && max)
		FUNC2(&sclk->hw, min, max);
	return ret;
}