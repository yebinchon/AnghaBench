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
struct lpc32xx_clk_div {int shift; int /*<<< orphan*/  width; int /*<<< orphan*/  reg; int /*<<< orphan*/  flags; int /*<<< orphan*/  table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  clk_regmap ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct lpc32xx_clk_div* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, unsigned long rate,
				unsigned long parent_rate)
{
	struct lpc32xx_clk_div *divider = FUNC3(hw);
	unsigned int value;

	value = FUNC1(rate, parent_rate, divider->table,
				divider->width, divider->flags);

	return FUNC2(clk_regmap, divider->reg,
				  FUNC0(divider->width) << divider->shift,
				  value << divider->shift);
}