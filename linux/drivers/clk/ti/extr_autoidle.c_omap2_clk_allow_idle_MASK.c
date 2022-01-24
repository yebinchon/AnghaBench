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
struct clk_hw_omap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct clk_hw* FUNC0 (struct clk*) ; 
 int FUNC1 (struct clk_hw_omap*) ; 
 scalar_t__ FUNC2 (struct clk_hw*) ; 
 struct clk_hw_omap* FUNC3 (struct clk_hw*) ; 

int FUNC4(struct clk *clk)
{
	struct clk_hw *hw = FUNC0(clk);

	if (FUNC2(hw)) {
		struct clk_hw_omap *c = FUNC3(hw);

		return FUNC1(c);
	}

	return -EINVAL;
}