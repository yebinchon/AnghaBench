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
struct uniphier_clk_fixed_rate_data {int /*<<< orphan*/  fixed_rate; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; scalar_t__ num_parents; int /*<<< orphan*/ * parent_names; int /*<<< orphan*/ * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_rate {struct clk_hw hw; int /*<<< orphan*/  fixed_rate; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clk_fixed_rate_ops ; 
 int FUNC1 (struct device*,struct clk_hw*) ; 
 struct clk_fixed_rate* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 

struct clk_hw *FUNC3(struct device *dev,
						const char *name,
				const struct uniphier_clk_fixed_rate_data *data)
{
	struct clk_fixed_rate *fixed;
	struct clk_init_data init;
	int ret;

	/* allocate fixed-rate clock */
	fixed = FUNC2(dev, sizeof(*fixed), GFP_KERNEL);
	if (!fixed)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &clk_fixed_rate_ops;
	init.parent_names = NULL;
	init.num_parents = 0;

	fixed->fixed_rate = data->fixed_rate;
	fixed->hw.init = &init;

	ret = FUNC1(dev, &fixed->hw);
	if (ret)
		return FUNC0(ret);

	return &fixed->hw;
}