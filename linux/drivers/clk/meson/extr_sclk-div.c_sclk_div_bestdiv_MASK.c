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
typedef  int /*<<< orphan*/  u64 ;
struct meson_sclk_div_data {int dummy; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_SET_RATE_PARENT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int) ; 
 unsigned long ULONG_MAX ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int FUNC2 (struct clk_hw*) ; 
 struct clk_hw* FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (struct clk_hw*,unsigned long) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 int FUNC6 (struct clk_hw*,unsigned long,unsigned long,unsigned long) ; 
 void* FUNC7 (struct meson_sclk_div_data*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, unsigned long rate,
			    unsigned long *prate,
			    struct meson_sclk_div_data *sclk)
{
	struct clk_hw *parent = FUNC3(hw);
	int bestdiv = 0, i;
	unsigned long maxdiv, now, parent_now;
	unsigned long best = 0, best_parent = 0;

	if (!rate)
		rate = 1;

	maxdiv = FUNC7(sclk);

	if (!(FUNC2(hw) & CLK_SET_RATE_PARENT))
		return FUNC6(hw, rate, *prate, maxdiv);

	/*
	 * The maximum divider we can use without overflowing
	 * unsigned long in rate * i below
	 */
	maxdiv = FUNC5(ULONG_MAX / rate, maxdiv);

	for (i = 2; i <= maxdiv; i++) {
		/*
		 * It's the most ideal case if the requested rate can be
		 * divided from parent clock without needing to change
		 * parent rate, so return the divider immediately.
		 */
		if (rate * i == *prate)
			return i;

		parent_now = FUNC4(parent, rate * i);
		now = FUNC0((u64)parent_now, i);

		if (FUNC1(rate - now) < FUNC1(rate - best)) {
			bestdiv = i;
			best = now;
			best_parent = parent_now;
		}
	}

	if (!bestdiv)
		bestdiv = FUNC7(sclk);
	else
		*prate = best_parent;

	return bestdiv;
}