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
typedef  int u32 ;
struct max77686_clk_init_data {TYPE_1__* clk_info; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int clk_enable_mask; int /*<<< orphan*/  clk_reg; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct max77686_clk_init_data* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct max77686_clk_init_data *max77686 = FUNC1(hw);
	int ret;
	u32 val;

	ret = FUNC0(max77686->regmap, max77686->clk_info->clk_reg, &val);

	if (ret < 0)
		return -EINVAL;

	return val & max77686->clk_info->clk_enable_mask;
}