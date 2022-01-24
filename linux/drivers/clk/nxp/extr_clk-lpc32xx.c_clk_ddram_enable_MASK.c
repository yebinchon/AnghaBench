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
typedef  int u32 ;
struct lpc32xx_clk {int busy_mask; int /*<<< orphan*/  enable_mask; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  clk_regmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct lpc32xx_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct lpc32xx_clk *clk = FUNC3(hw);
	u32 val, hclk_div;

	FUNC1(clk_regmap, clk->reg, &val);
	hclk_div = val & clk->busy_mask;

	/*
	 * DDRAM clock must be 2 times higher than HCLK,
	 * this implies DDRAM clock can not be enabled,
	 * if HCLK clock rate is equal to ARM clock rate
	 */
	if (hclk_div == 0x0 || hclk_div == (FUNC0(1) | FUNC0(0)))
		return -EINVAL;

	return FUNC2(clk_regmap, clk->reg,
				  clk->enable_mask, hclk_div << 7);
}