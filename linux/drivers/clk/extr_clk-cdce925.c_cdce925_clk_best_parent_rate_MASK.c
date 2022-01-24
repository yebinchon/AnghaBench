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
typedef  scalar_t__ u16 ;
struct clk_hw {struct clk* clk; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned long CDCE925_PLL_FREQUENCY_MAX ; 
 int /*<<< orphan*/  CDCE925_PLL_FREQUENCY_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC1 (long) ; 
 struct clk* FUNC2 (struct clk*) ; 
 unsigned long FUNC3 (struct clk*) ; 
 long FUNC4 (struct clk*,unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static unsigned long FUNC7(
	struct clk_hw *hw, unsigned long rate)
{
	struct clk *pll = FUNC2(hw->clk);
	struct clk *root = FUNC2(pll);
	unsigned long root_rate = FUNC3(root);
	unsigned long best_rate_error = rate;
	u16 pdiv_min;
	u16 pdiv_max;
	u16 pdiv_best;
	u16 pdiv_now;

	if (root_rate % rate == 0)
		return root_rate; /* Don't need the PLL, use bypass */

	pdiv_min = (u16)FUNC5(1ul, FUNC0(CDCE925_PLL_FREQUENCY_MIN, rate));
	pdiv_max = (u16)FUNC6(127ul, CDCE925_PLL_FREQUENCY_MAX / rate);

	if (pdiv_min > pdiv_max)
		return 0; /* No can do? */

	pdiv_best = pdiv_min;
	for (pdiv_now = pdiv_min; pdiv_now < pdiv_max; ++pdiv_now) {
		unsigned long target_rate = rate * pdiv_now;
		long pll_rate = FUNC4(pll, target_rate);
		unsigned long actual_rate;
		unsigned long rate_error;

		if (pll_rate <= 0)
			continue;
		actual_rate = pll_rate / pdiv_now;
		rate_error = FUNC1((long)actual_rate - (long)rate);
		if (rate_error < best_rate_error) {
			pdiv_best = pdiv_now;
			best_rate_error = rate_error;
		}
		/* TODO: Consider PLL frequency based on smaller n/m values
		 * and pick the better one if the error is equal */
	}

	return rate * pdiv_best;
}