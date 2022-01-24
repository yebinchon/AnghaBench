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
typedef  size_t u8 ;
struct clk_sysctrl {size_t parent_index; int /*<<< orphan*/ * reg_bits; int /*<<< orphan*/ * reg_mask; scalar_t__* reg_sel; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_sysctrl* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, u8 index)
{
	struct clk_sysctrl *clk = FUNC2(hw);
	u8 old_index = clk->parent_index;
	int ret = 0;

	if (clk->reg_sel[old_index]) {
		ret = FUNC0(clk->reg_sel[old_index],
					clk->reg_mask[old_index]);
		if (ret)
			return ret;
	}

	if (clk->reg_sel[index]) {
		ret = FUNC1(clk->reg_sel[index],
					clk->reg_mask[index],
					clk->reg_bits[index]);
		if (ret) {
			if (clk->reg_sel[old_index])
				FUNC1(clk->reg_sel[old_index],
						clk->reg_mask[old_index],
						clk->reg_bits[old_index]);
			return ret;
		}
	}
	clk->parent_index = index;

	return ret;
}