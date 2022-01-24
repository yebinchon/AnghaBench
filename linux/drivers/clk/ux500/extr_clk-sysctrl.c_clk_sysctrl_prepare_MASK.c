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
struct clk_sysctrl {int enable_delay_us; int /*<<< orphan*/ * reg_bits; int /*<<< orphan*/ * reg_mask; int /*<<< orphan*/ * reg_sel; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_sysctrl* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	int ret;
	struct clk_sysctrl *clk = FUNC1(hw);

	ret = FUNC0(clk->reg_sel[0], clk->reg_mask[0],
				clk->reg_bits[0]);

	if (!ret && clk->enable_delay_us)
		FUNC2(clk->enable_delay_us, clk->enable_delay_us +
			     (clk->enable_delay_us >> 2));

	return ret;
}