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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct clk_hw {int dummy; } ;
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned long ULONG_MAX ; 
 int FUNC1 (struct clk_div_table const*,unsigned long,unsigned long,unsigned long) ; 
 void* FUNC2 (struct clk_div_table const*,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int FUNC4 (struct clk_div_table const*,int,unsigned long) ; 
 int FUNC5 (struct clk_hw*) ; 
 unsigned long FUNC6 (struct clk_hw*,int) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, struct clk_hw *parent,
			       unsigned long rate,
			       unsigned long *best_parent_rate,
			       const struct clk_div_table *table, u8 width,
			       unsigned long flags)
{
	int i, bestdiv = 0;
	unsigned long parent_rate, best = 0, now, maxdiv;
	unsigned long parent_rate_saved = *best_parent_rate;

	if (!rate)
		rate = 1;

	maxdiv = FUNC2(table, width, flags);

	if (!(FUNC5(hw) & CLK_SET_RATE_PARENT)) {
		parent_rate = *best_parent_rate;
		bestdiv = FUNC1(table, parent_rate, rate, flags);
		bestdiv = bestdiv == 0 ? 1 : bestdiv;
		bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
		return bestdiv;
	}

	/*
	 * The maximum divider we can use without overflowing
	 * unsigned long in rate * i below
	 */
	maxdiv = FUNC7(ULONG_MAX / rate, maxdiv);

	for (i = FUNC4(table, 0, flags); i <= maxdiv;
					     i = FUNC4(table, i, flags)) {
		if (rate * i == parent_rate_saved) {
			/*
			 * It's the most ideal case if the requested rate can be
			 * divided from parent clock without needing to change
			 * parent rate, so return the divider immediately.
			 */
			*best_parent_rate = parent_rate_saved;
			return i;
		}
		parent_rate = FUNC6(parent, rate * i);
		now = FUNC0((u64)parent_rate, i);
		if (FUNC3(rate, now, best, flags)) {
			bestdiv = i;
			best = now;
			*best_parent_rate = parent_rate;
		}
	}

	if (!bestdiv) {
		bestdiv = FUNC2(table, width, flags);
		*best_parent_rate = FUNC6(parent, 1);
	}

	return bestdiv;
}