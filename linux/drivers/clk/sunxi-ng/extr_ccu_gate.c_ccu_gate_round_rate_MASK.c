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
struct TYPE_2__ {int features; int prediv; } ;
struct ccu_gate {TYPE_1__ common; } ;

/* Variables and functions */
 int CCU_FEATURE_ALL_PREDIV ; 
 int CLK_SET_RATE_PARENT ; 
 int FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct ccu_gate* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct ccu_gate *cg = FUNC3(hw);
	int div = 1;

	if (cg->common.features & CCU_FEATURE_ALL_PREDIV)
		div = cg->common.prediv;

	if (FUNC0(hw) & CLK_SET_RATE_PARENT) {
		unsigned long best_parent = rate;

		if (cg->common.features & CCU_FEATURE_ALL_PREDIV)
			best_parent *= div;
		*prate = FUNC2(FUNC1(hw), best_parent);
	}

	return *prate / div;
}