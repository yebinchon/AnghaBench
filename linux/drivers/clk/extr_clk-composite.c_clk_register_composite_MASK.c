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
struct clk_ops {int dummy; } ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 struct clk* FUNC0 (struct clk_hw*) ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct device*,char const*,char const* const*,int,struct clk_hw*,struct clk_ops const*,struct clk_hw*,struct clk_ops const*,struct clk_hw*,struct clk_ops const*,unsigned long) ; 

struct clk *FUNC3(struct device *dev, const char *name,
			const char * const *parent_names, int num_parents,
			struct clk_hw *mux_hw, const struct clk_ops *mux_ops,
			struct clk_hw *rate_hw, const struct clk_ops *rate_ops,
			struct clk_hw *gate_hw, const struct clk_ops *gate_ops,
			unsigned long flags)
{
	struct clk_hw *hw;

	hw = FUNC2(dev, name, parent_names, num_parents,
			mux_hw, mux_ops, rate_hw, rate_ops, gate_hw, gate_ops,
			flags);
	if (FUNC1(hw))
		return FUNC0(hw);
	return hw->clk;
}