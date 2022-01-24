#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int /*<<< orphan*/  clk; } ;
struct clk {int dummy; } ;
struct TYPE_9__ {struct clk* clk; } ;
struct TYPE_12__ {TYPE_3__ hw; } ;
struct TYPE_8__ {struct clk* clk; } ;
struct TYPE_11__ {TYPE_2__ hw; } ;
struct TYPE_7__ {struct clk* clk; } ;
struct TYPE_10__ {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct clk*) ; 
 TYPE_6__ clk_pll1 ; 
 TYPE_5__ clk_pll2 ; 
 TYPE_4__ clk_pll3 ; 
 int FUNC3 (int /*<<< orphan*/ ,struct clk*) ; 
 int FUNC4 (struct clk*,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	int ret1, ret2;
	struct clk *cur_parent;

	if (rate == FUNC2(clk_pll1.hw.clk)) {
		ret1 = FUNC3(hw->clk, clk_pll1.hw.clk);
		return ret1;
	}

	if (rate == FUNC2(clk_pll2.hw.clk)) {
		ret1 = FUNC3(hw->clk, clk_pll2.hw.clk);
		return ret1;
	}

	if (rate == FUNC2(clk_pll3.hw.clk)) {
		ret1 = FUNC3(hw->clk, clk_pll3.hw.clk);
		return ret1;
	}

	cur_parent = FUNC1(hw->clk);

	/* switch to tmp pll before setting parent clock's rate */
	if (cur_parent ==  clk_pll1.hw.clk) {
		ret1 = FUNC3(hw->clk, clk_pll2.hw.clk);
		FUNC0(ret1);
	}

	ret2 = FUNC4(clk_pll1.hw.clk, rate);

	ret1 = FUNC3(hw->clk, clk_pll1.hw.clk);

	return ret2 ? ret2 : ret1;
}