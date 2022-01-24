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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* set_rate ) (struct clk_hw*,unsigned long,unsigned long) ;} ;

/* Variables and functions */
 TYPE_1__ clk_divider_ops ; 
 struct clk_hw* FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_hw*) ; 
 int FUNC4 (struct clk_hw*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_hw *hwp;
	int pll_status;
	int ret;

	hwp = FUNC0(hw);

	pll_status = FUNC3(hwp);

	if (pll_status)
		FUNC1(hwp);

	ret = clk_divider_ops.set_rate(hw, rate, parent_rate);

	if (pll_status)
		FUNC2(hwp);

	return ret;
}