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
struct cpg_z_clk {unsigned long fixed_div; int mask; int /*<<< orphan*/  kick_reg; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CPG_FRQCRB_KICK ; 
 unsigned int FUNC0 (unsigned long,unsigned long) ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct cpg_z_clk* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, unsigned long rate,
			      unsigned long parent_rate)
{
	struct cpg_z_clk *zclk = FUNC6(hw);
	unsigned int mult;
	unsigned int i;

	mult = FUNC0(rate * 32ULL * zclk->fixed_div,
				       parent_rate);
	mult = FUNC2(mult, 1U, 32U);

	if (FUNC5(zclk->kick_reg) & CPG_FRQCRB_KICK)
		return -EBUSY;

	FUNC3(zclk->reg, zclk->mask,
		       ((32 - mult) << FUNC1(zclk->mask)) & zclk->mask);

	/*
	 * Set KICK bit in FRQCRB to update hardware setting and wait for
	 * clock change completion.
	 */
	FUNC3(zclk->kick_reg, 0, CPG_FRQCRB_KICK);

	/*
	 * Note: There is no HW information about the worst case latency.
	 *
	 * Using experimental measurements, it seems that no more than
	 * ~10 iterations are needed, independently of the CPU rate.
	 * Since this value might be dependent of external xtal rate, pll1
	 * rate or even the other emulation clocks rate, use 1000 as a
	 * "super" safe value.
	 */
	for (i = 1000; i; i--) {
		if (!(FUNC5(zclk->kick_reg) & CPG_FRQCRB_KICK))
			return 0;

		FUNC4();
	}

	return -ETIMEDOUT;
}