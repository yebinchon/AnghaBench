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
typedef  int u8 ;
struct clk_multiplier {int flags; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_MULTIPLIER_ZERO_BYPASS ; 
 int CLK_SET_RATE_PARENT ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_multiplier* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw, unsigned long rate,
				unsigned long *best_parent_rate,
				u8 width, unsigned long flags)
{
	struct clk_multiplier *mult = FUNC4(hw);
	unsigned long orig_parent_rate = *best_parent_rate;
	unsigned long parent_rate, current_rate, best_rate = ~0;
	unsigned int i, bestmult = 0;
	unsigned int maxmult = (1 << width) - 1;

	if (!(FUNC1(hw) & CLK_SET_RATE_PARENT)) {
		bestmult = rate / orig_parent_rate;

		/* Make sure we don't end up with a 0 multiplier */
		if ((bestmult == 0) &&
		    !(mult->flags & CLK_MULTIPLIER_ZERO_BYPASS))
			bestmult = 1;

		/* Make sure we don't overflow the multiplier */
		if (bestmult > maxmult)
			bestmult = maxmult;

		return bestmult;
	}

	for (i = 1; i < maxmult; i++) {
		if (rate == orig_parent_rate * i) {
			/*
			 * This is the best case for us if we have a
			 * perfect match without changing the parent
			 * rate.
			 */
			*best_parent_rate = orig_parent_rate;
			return i;
		}

		parent_rate = FUNC3(FUNC2(hw),
						rate / i);
		current_rate = parent_rate * i;

		if (FUNC0(rate, current_rate, best_rate, flags)) {
			bestmult = i;
			best_rate = current_rate;
			*best_parent_rate = parent_rate;
		}
	}

	return bestmult;
}