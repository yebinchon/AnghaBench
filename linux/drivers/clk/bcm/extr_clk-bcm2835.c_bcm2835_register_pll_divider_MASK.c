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
struct clk_init_data {int num_parents; char const* name; int flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/ * parent_names; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct bcm2835_pll_divider_data {int fixed_divider; char* name; int flags; scalar_t__ a2w_reg; int /*<<< orphan*/  source_pll; } ;
struct TYPE_2__ {struct clk_hw hw; int /*<<< orphan*/ * table; int /*<<< orphan*/ * lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  width; int /*<<< orphan*/  shift; scalar_t__ reg; } ;
struct bcm2835_pll_divider {TYPE_1__ div; struct bcm2835_pll_divider_data const* data; struct bcm2835_cprman* cprman; } ;
struct bcm2835_cprman {int /*<<< orphan*/  dev; int /*<<< orphan*/  regs_lock; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  init ;

/* Variables and functions */
 int /*<<< orphan*/  A2W_PLL_DIV_BITS ; 
 int /*<<< orphan*/  A2W_PLL_DIV_SHIFT ; 
 int /*<<< orphan*/  CLK_DIVIDER_MAX_AT_ZERO ; 
 int CLK_IGNORE_UNUSED ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bcm2835_pll_divider_clk_ops ; 
 struct clk_hw* FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct clk_hw*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct bcm2835_pll_divider* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct clk_init_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct clk_hw *
FUNC6(struct bcm2835_cprman *cprman,
			     const struct bcm2835_pll_divider_data *data)
{
	struct bcm2835_pll_divider *divider;
	struct clk_init_data init;
	const char *divider_name;
	int ret;

	if (data->fixed_divider != 1) {
		divider_name = FUNC3(cprman->dev, GFP_KERNEL,
					      "%s_prediv", data->name);
		if (!divider_name)
			return NULL;
	} else {
		divider_name = data->name;
	}

	FUNC5(&init, 0, sizeof(init));

	init.parent_names = &data->source_pll;
	init.num_parents = 1;
	init.name = divider_name;
	init.ops = &bcm2835_pll_divider_clk_ops;
	init.flags = data->flags | CLK_IGNORE_UNUSED;

	divider = FUNC4(cprman->dev, sizeof(*divider), GFP_KERNEL);
	if (!divider)
		return NULL;

	divider->div.reg = cprman->regs + data->a2w_reg;
	divider->div.shift = A2W_PLL_DIV_SHIFT;
	divider->div.width = A2W_PLL_DIV_BITS;
	divider->div.flags = CLK_DIVIDER_MAX_AT_ZERO;
	divider->div.lock = &cprman->regs_lock;
	divider->div.hw.init = &init;
	divider->div.table = NULL;

	divider->cprman = cprman;
	divider->data = data;

	ret = FUNC2(cprman->dev, &divider->div.hw);
	if (ret)
		return FUNC0(ret);

	/*
	 * PLLH's channels have a fixed divide by 10 afterwards, which
	 * is what our consumers are actually using.
	 */
	if (data->fixed_divider != 1) {
		return FUNC1(cprman->dev, data->name,
						    divider_name,
						    CLK_SET_RATE_PARENT,
						    1,
						    data->fixed_divider);
	}

	return &divider->div.hw;
}