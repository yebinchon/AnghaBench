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
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; scalar_t__ flags; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_fixed_rate {unsigned long fixed_rate; TYPE_1__ hw; } ;
struct clk_fixed_factor {int mult; int div; TYPE_1__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clk_fixed_factor_ops ; 
 int /*<<< orphan*/  clk_fixed_rate_ops ; 
 int FUNC0 (struct device*,TYPE_1__*) ; 
 void* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (char*) ; 
 struct device_node* FUNC3 (struct device_node*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 

__attribute__((used)) static int FUNC5(struct device *dev, const char *path,
				       const char *name, unsigned long rate,
				       bool add_factor)
{
	struct device_node *node = NULL;
	struct device_node *clocks_node;
	struct clk_fixed_factor *factor;
	struct clk_fixed_rate *fixed;
	struct clk_init_data init_data = { };
	int ret;

	clocks_node = FUNC2("/clocks");
	if (clocks_node) {
		node = FUNC3(clocks_node, path);
		FUNC4(clocks_node);
	}

	if (!node) {
		fixed = FUNC1(dev, sizeof(*fixed), GFP_KERNEL);
		if (!fixed)
			return -EINVAL;

		fixed->fixed_rate = rate;
		fixed->hw.init = &init_data;

		init_data.name = path;
		init_data.ops = &clk_fixed_rate_ops;

		ret = FUNC0(dev, &fixed->hw);
		if (ret)
			return ret;
	}
	FUNC4(node);

	if (add_factor) {
		factor = FUNC1(dev, sizeof(*factor), GFP_KERNEL);
		if (!factor)
			return -EINVAL;

		factor->mult = factor->div = 1;
		factor->hw.init = &init_data;

		init_data.name = name;
		init_data.parent_names = &path;
		init_data.num_parents = 1;
		init_data.flags = 0;
		init_data.ops = &clk_fixed_factor_ops;

		ret = FUNC0(dev, &factor->hw);
		if (ret)
			return ret;
	}

	return 0;
}