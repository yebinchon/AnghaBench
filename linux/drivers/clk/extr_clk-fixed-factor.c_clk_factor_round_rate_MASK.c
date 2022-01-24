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
struct clk_hw {int dummy; } ;
struct clk_fixed_factor {unsigned long mult; unsigned long div; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 int FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_fixed_factor* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC4(struct clk_hw *hw, unsigned long rate,
				unsigned long *prate)
{
	struct clk_fixed_factor *fix = FUNC3(hw);

	if (FUNC0(hw) & CLK_SET_RATE_PARENT) {
		unsigned long best_parent;

		best_parent = (rate / fix->mult) * fix->div;
		*prate = FUNC2(FUNC1(hw), best_parent);
	}

	return (*prate / fix->div) * fix->mult;
}