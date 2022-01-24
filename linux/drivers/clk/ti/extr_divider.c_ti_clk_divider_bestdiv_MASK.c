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
struct clk_omap_divider {int /*<<< orphan*/  table; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 unsigned long FUNC0 (unsigned long,int) ; 
 int FUNC1 (unsigned long,int) ; 
 unsigned long ULONG_MAX ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 void* FUNC3 (struct clk_omap_divider*) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_omap_divider*,int) ; 
 int FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_hw*) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 
 struct clk_omap_divider* FUNC9 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw, unsigned long rate,
				  unsigned long *best_parent_rate)
{
	struct clk_omap_divider *divider = FUNC9(hw);
	int i, bestdiv = 0;
	unsigned long parent_rate, best = 0, now, maxdiv;
	unsigned long parent_rate_saved = *best_parent_rate;

	if (!rate)
		rate = 1;

	maxdiv = FUNC3(divider);

	if (!(FUNC5(hw) & CLK_SET_RATE_PARENT)) {
		parent_rate = *best_parent_rate;
		bestdiv = FUNC2(divider->table, parent_rate, rate);
		bestdiv = bestdiv == 0 ? 1 : bestdiv;
		bestdiv = bestdiv > maxdiv ? maxdiv : bestdiv;
		return bestdiv;
	}

	/*
	 * The maximum divider we can use without overflowing
	 * unsigned long in rate * i below
	 */
	maxdiv = FUNC8(ULONG_MAX / rate, maxdiv);

	for (i = 1; i <= maxdiv; i++) {
		if (!FUNC4(divider, i))
			continue;
		if (rate * i == parent_rate_saved) {
			/*
			 * It's the most ideal case if the requested rate can be
			 * divided from parent clock without needing to change
			 * parent rate, so return the divider immediately.
			 */
			*best_parent_rate = parent_rate_saved;
			return i;
		}
		parent_rate = FUNC7(FUNC6(hw),
				FUNC1(rate, i));
		now = FUNC0(parent_rate, i);
		if (now <= rate && now > best) {
			bestdiv = i;
			best = now;
			*best_parent_rate = parent_rate;
		}
	}

	if (!bestdiv) {
		bestdiv = FUNC3(divider);
		*best_parent_rate =
			FUNC7(FUNC6(hw), 1);
	}

	return bestdiv;
}