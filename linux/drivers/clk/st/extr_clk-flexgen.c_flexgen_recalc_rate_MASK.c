#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct TYPE_5__ {struct clk_hw hw; } ;
struct TYPE_4__ {struct clk_hw hw; } ;
struct flexgen {TYPE_2__ fdiv; TYPE_1__ pdiv; } ;
struct TYPE_6__ {unsigned long (* recalc_rate ) (struct clk_hw*,unsigned long) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,struct clk_hw*) ; 
 TYPE_3__ clk_divider_ops ; 
 unsigned long FUNC1 (struct clk_hw*,unsigned long) ; 
 unsigned long FUNC2 (struct clk_hw*,unsigned long) ; 
 struct flexgen* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct flexgen *flexgen = FUNC3(hw);
	struct clk_hw *pdiv_hw = &flexgen->pdiv.hw;
	struct clk_hw *fdiv_hw = &flexgen->fdiv.hw;
	unsigned long mid_rate;

	FUNC0(pdiv_hw, hw);
	FUNC0(fdiv_hw, hw);

	mid_rate = clk_divider_ops.recalc_rate(pdiv_hw, parent_rate);

	return clk_divider_ops.recalc_rate(fdiv_hw, mid_rate);
}