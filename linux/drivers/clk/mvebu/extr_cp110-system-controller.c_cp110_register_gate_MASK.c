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
typedef  int /*<<< orphan*/  u8 ;
struct regmap {int dummy; } ;
struct clk_hw {struct clk_init_data* init; } ;
struct cp110_gate_clk {struct clk_hw hw; int /*<<< orphan*/  bit_idx; struct regmap* regmap; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; } ;
typedef  int /*<<< orphan*/  init ;

/* Variables and functions */
 int ENOMEM ; 
 struct clk_hw* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (int /*<<< orphan*/ *,struct clk_hw*) ; 
 int /*<<< orphan*/  cp110_gate_ops ; 
 int /*<<< orphan*/  FUNC2 (struct cp110_gate_clk*) ; 
 struct cp110_gate_clk* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_init_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct clk_hw *FUNC5(const char *name,
					  const char *parent_name,
					  struct regmap *regmap, u8 bit_idx)
{
	struct cp110_gate_clk *gate;
	struct clk_hw *hw;
	struct clk_init_data init;
	int ret;

	gate = FUNC3(sizeof(*gate), GFP_KERNEL);
	if (!gate)
		return FUNC0(-ENOMEM);

	FUNC4(&init, 0, sizeof(init));

	init.name = name;
	init.ops = &cp110_gate_ops;
	init.parent_names = &parent_name;
	init.num_parents = 1;

	gate->regmap = regmap;
	gate->bit_idx = bit_idx;
	gate->hw.init = &init;

	hw = &gate->hw;
	ret = FUNC1(NULL, hw);
	if (ret) {
		FUNC2(gate);
		hw = FUNC0(ret);
	}

	return hw;
}