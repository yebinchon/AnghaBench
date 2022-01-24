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
struct clk_ops {unsigned long (* recalc_rate ) (struct clk_hw*,unsigned long) ;} ;
struct clk_hw {int dummy; } ;
struct clk_composite {struct clk_hw* rate_hw; struct clk_ops* rate_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 unsigned long FUNC1 (struct clk_hw*,unsigned long) ; 
 struct clk_composite* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					    unsigned long parent_rate)
{
	struct clk_composite *composite = FUNC2(hw);
	const struct clk_ops *rate_ops = composite->rate_ops;
	struct clk_hw *rate_hw = composite->rate_hw;

	FUNC0(rate_hw, hw);

	return rate_ops->recalc_rate(rate_hw, parent_rate);
}