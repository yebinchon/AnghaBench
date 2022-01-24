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
typedef  int /*<<< orphan*/  u8 ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct clk_hw hw; } ;
struct tegra_clk_periph {TYPE_1__ mux; struct clk_ops* mux_ops; } ;
struct clk_ops {int (* set_parent ) (struct clk_hw*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 int FUNC1 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 struct tegra_clk_periph* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, u8 index)
{
	struct tegra_clk_periph *periph = FUNC2(hw);
	const struct clk_ops *mux_ops = periph->mux_ops;
	struct clk_hw *mux_hw = &periph->mux.hw;

	FUNC0(mux_hw, hw);

	return mux_ops->set_parent(mux_hw, index);
}