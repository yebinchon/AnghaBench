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
struct device {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_rate {unsigned long fixed_rate; unsigned long fixed_accuracy; struct clk_hw hw; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clk_fixed_rate_ops ; 
 int FUNC1 (struct device*,struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_fixed_rate*) ; 
 struct clk_fixed_rate* FUNC3 (int,int /*<<< orphan*/ ) ; 

struct clk_hw *FUNC4(struct device *dev,
		const char *name, const char *parent_name, unsigned long flags,
		unsigned long fixed_rate, unsigned long fixed_accuracy)
{
	struct clk_fixed_rate *fixed;
	struct clk_hw *hw;
	struct clk_init_data init;
	int ret;

	/* allocate fixed-rate clock */
	fixed = FUNC3(sizeof(*fixed), GFP_KERNEL);
	if (!fixed)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &clk_fixed_rate_ops;
	init.flags = flags;
	init.parent_names = (parent_name ? &parent_name: NULL);
	init.num_parents = (parent_name ? 1 : 0);

	/* struct clk_fixed_rate assignments */
	fixed->fixed_rate = fixed_rate;
	fixed->fixed_accuracy = fixed_accuracy;
	fixed->hw.init = &init;

	/* register the clock */
	hw = &fixed->hw;
	ret = FUNC1(dev, hw);
	if (ret) {
		FUNC2(fixed);
		hw = FUNC0(ret);
	}

	return hw;
}