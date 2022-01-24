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
struct clk_regmap {int /*<<< orphan*/  regmap; } ;
struct clk_regmap_div {int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  reg; struct clk_regmap clkr; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CLK_DIVIDER_ROUND_CLOSEST ; 
 int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct clk_regmap_div* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
			unsigned long parent_rate)
{
	struct clk_regmap_div *divider = FUNC3(hw);
	struct clk_regmap *clkr = &divider->clkr;
	u32 div;

	div = FUNC1(rate, parent_rate, NULL, divider->width,
			      CLK_DIVIDER_ROUND_CLOSEST);

	return FUNC2(clkr->regmap, divider->reg,
				  (FUNC0(divider->width) - 1) << divider->shift,
				  div << divider->shift);
}