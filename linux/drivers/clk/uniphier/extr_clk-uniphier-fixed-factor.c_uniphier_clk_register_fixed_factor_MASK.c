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
struct uniphier_clk_fixed_factor_data {int /*<<< orphan*/  div; int /*<<< orphan*/  mult; scalar_t__ parent_name; } ;
struct device {int dummy; } ;
struct clk_init_data {char const* name; int num_parents; scalar_t__* parent_names; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct clk_fixed_factor {struct clk_hw hw; int /*<<< orphan*/  div; int /*<<< orphan*/  mult; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clk_fixed_factor_ops ; 
 int FUNC1 (struct device*,struct clk_hw*) ; 
 struct clk_fixed_factor* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 

struct clk_hw *FUNC3(struct device *dev,
						  const char *name,
			const struct uniphier_clk_fixed_factor_data *data)
{
	struct clk_fixed_factor *fix;
	struct clk_init_data init;
	int ret;

	fix = FUNC2(dev, sizeof(*fix), GFP_KERNEL);
	if (!fix)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &clk_fixed_factor_ops;
	init.flags = data->parent_name ? CLK_SET_RATE_PARENT : 0;
	init.parent_names = data->parent_name ? &data->parent_name : NULL;
	init.num_parents = data->parent_name ? 1 : 0;

	fix->mult = data->mult;
	fix->div = data->div;
	fix->hw.init = &init;

	ret = FUNC1(dev, &fix->hw);
	if (ret)
		return FUNC0(ret);

	return &fix->hw;
}