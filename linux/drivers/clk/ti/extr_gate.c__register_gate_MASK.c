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
typedef  void* u8 ;
struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_omap_reg {int dummy; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; unsigned long flags; struct clk_ops const* ops; int /*<<< orphan*/ * member_0; } ;
struct clk_hw_omap_ops {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_hw_omap {TYPE_1__ hw; void* flags; struct clk_hw_omap_ops const* ops; void* enable_bit; int /*<<< orphan*/  enable_reg; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw_omap*) ; 
 struct clk_hw_omap* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct clk_omap_reg*,int) ; 
 struct clk* FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,char const*) ; 

__attribute__((used)) static struct clk *FUNC6(struct device *dev, const char *name,
				  const char *parent_name, unsigned long flags,
				  struct clk_omap_reg *reg, u8 bit_idx,
				  u8 clk_gate_flags, const struct clk_ops *ops,
				  const struct clk_hw_omap_ops *hw_ops)
{
	struct clk_init_data init = { NULL };
	struct clk_hw_omap *clk_hw;
	struct clk *clk;

	clk_hw = FUNC3(sizeof(*clk_hw), GFP_KERNEL);
	if (!clk_hw)
		return FUNC0(-ENOMEM);

	clk_hw->hw.init = &init;

	init.name = name;
	init.ops = ops;

	FUNC4(&clk_hw->enable_reg, reg, sizeof(*reg));
	clk_hw->enable_bit = bit_idx;
	clk_hw->ops = hw_ops;

	clk_hw->flags = clk_gate_flags;

	init.parent_names = &parent_name;
	init.num_parents = 1;

	init.flags = flags;

	clk = FUNC5(NULL, &clk_hw->hw, name);

	if (FUNC1(clk))
		FUNC2(clk_hw);

	return clk;
}