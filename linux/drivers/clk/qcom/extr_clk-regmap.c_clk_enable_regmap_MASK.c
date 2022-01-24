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
struct clk_regmap {unsigned int enable_mask; int /*<<< orphan*/  enable_reg; int /*<<< orphan*/  regmap; scalar_t__ enable_is_inverted; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 struct clk_regmap* FUNC1 (struct clk_hw*) ; 

int FUNC2(struct clk_hw *hw)
{
	struct clk_regmap *rclk = FUNC1(hw);
	unsigned int val;

	if (rclk->enable_is_inverted)
		val = 0;
	else
		val = rclk->enable_mask;

	return FUNC0(rclk->regmap, rclk->enable_reg,
				  rclk->enable_mask, val);
}