#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  regmap; } ;
struct clk_rcg2 {scalar_t__ cmd_rcgr; TYPE_2__ clkr; TYPE_1__* parent_map; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int cfg; } ;

/* Variables and functions */
 scalar_t__ CFG_REG ; 
 int CFG_SRC_SEL_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct clk_rcg2* FUNC1 (struct clk_hw*) ; 
 int FUNC2 (struct clk_rcg2*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate, u8 index)
{
	struct clk_rcg2 *rcg = FUNC1(hw);
	u32 cfg;
	int ret;

	/* Just mux it, we don't use the division or m/n hardware */
	cfg = rcg->parent_map[index].cfg << CFG_SRC_SEL_SHIFT;
	ret = FUNC0(rcg->clkr.regmap, rcg->cmd_rcgr + CFG_REG, cfg);
	if (ret)
		return ret;

	return FUNC2(rcg);
}