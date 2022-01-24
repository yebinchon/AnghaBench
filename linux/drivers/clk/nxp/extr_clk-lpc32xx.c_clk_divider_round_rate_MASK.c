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
struct lpc32xx_clk_div {int flags; unsigned int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  table; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_DIVIDER_READ_ONLY ; 
 long FUNC0 (unsigned long,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clk_regmap ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 long FUNC3 (struct clk_hw*,unsigned long,unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 struct lpc32xx_clk_div* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC6(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct lpc32xx_clk_div *divider = FUNC5(hw);
	unsigned int bestdiv;

	/* if read only, just return current value */
	if (divider->flags & CLK_DIVIDER_READ_ONLY) {
		FUNC4(clk_regmap, divider->reg, &bestdiv);
		bestdiv >>= divider->shift;
		bestdiv &= FUNC2(divider->width);
		bestdiv = FUNC1(divider->table, bestdiv, divider->flags,
			divider->width);
		return FUNC0(*prate, bestdiv);
	}

	return FUNC3(hw, rate, prate, divider->table,
				  divider->width, divider->flags);
}