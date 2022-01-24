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
struct clk_rcg2 {TYPE_2__ clkr; TYPE_1__* parent_map; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFG_SRC_SEL_MASK ; 
 int CFG_SRC_SEL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct clk_rcg2*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct clk_rcg2* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_rcg2*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct clk_rcg2 *rcg = FUNC2(hw);
	int ret;
	u32 cfg = rcg->parent_map[index].cfg << CFG_SRC_SEL_SHIFT;

	ret = FUNC1(rcg->clkr.regmap, FUNC0(rcg),
				 CFG_SRC_SEL_MASK, cfg);
	if (ret)
		return ret;

	return FUNC3(rcg);
}