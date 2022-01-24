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
typedef  int u64 ;
struct lpc32xx_pll_clk {int n_div; int m_div; int p_div; int /*<<< orphan*/  mode; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 long EINVAL ; 
 int /*<<< orphan*/  PLL_NON_INTEGER ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 struct clk_hw* FUNC1 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct clk_hw*) ; 
 void* FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 struct lpc32xx_pll_clk* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static long FUNC7(struct clk_hw *hw, unsigned long rate,
				   unsigned long *parent_rate)
{
	struct lpc32xx_pll_clk *clk = FUNC6(hw);
	struct clk_hw *usb_div_hw, *osc_hw;
	u64 d_i, n_i, m, o;

	FUNC5("%s: %lu/%lu\n", FUNC0(hw), *parent_rate, rate);

	/*
	 * The only supported USB clock is 48MHz, with PLL internal constraints
	 * on Fclkin, Fcco and Fref this implies that Fcco must be 192MHz
	 * and post-divider must be 4, this slightly simplifies calculation of
	 * USB divider, USB PLL N and M parameters.
	 */
	if (rate != 48000000)
		return -EINVAL;

	/* USB divider clock */
	usb_div_hw = FUNC1(hw, 0);
	if (!usb_div_hw)
		return -EINVAL;

	/* Main oscillator clock */
	osc_hw = FUNC1(usb_div_hw, 0);
	if (!osc_hw)
		return -EINVAL;
	o = FUNC2(osc_hw);	/* must be in range 1..20 MHz */

	/* Check if valid USB divider and USB PLL parameters exists */
	for (d_i = 16; d_i >= 1; d_i--) {
		for (n_i = 1; n_i <= 4; n_i++) {
			m = FUNC3(192000000 * d_i * n_i, o);
			if (!(m && m <= 256
			      && m * o == 192000000 * d_i * n_i
			      && FUNC4(o, d_i, 1000000, 20000000)
			      && FUNC4(o, d_i * n_i, 1000000, 27000000)))
				continue;

			clk->n_div = n_i;
			clk->m_div = m;
			clk->p_div = 2;
			clk->mode = PLL_NON_INTEGER;
			*parent_rate = FUNC3(o, d_i);

			return rate;
		}
	}

	return -EINVAL;
}