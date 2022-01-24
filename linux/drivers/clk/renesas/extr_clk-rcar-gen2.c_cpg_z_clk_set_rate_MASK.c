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
typedef  int u32 ;
struct cpg_z_clk {int /*<<< orphan*/  kick_reg; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CPG_FRQCRB_KICK ; 
 int CPG_FRQCRC_ZFC_MASK ; 
 int CPG_FRQCRC_ZFC_SHIFT ; 
 int EBUSY ; 
 int ETIMEDOUT ; 
 unsigned int FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned int FUNC2 (int,unsigned long) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct cpg_z_clk* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
			      unsigned long parent_rate)
{
	struct cpg_z_clk *zclk = FUNC4(hw);
	unsigned int mult;
	u32 val, kick;
	unsigned int i;

	mult = FUNC2((u64)rate * 32, parent_rate);
	mult = FUNC0(mult, 1U, 32U);

	if (FUNC3(zclk->kick_reg) & CPG_FRQCRB_KICK)
		return -EBUSY;

	val = FUNC3(zclk->reg);
	val &= ~CPG_FRQCRC_ZFC_MASK;
	val |= (32 - mult) << CPG_FRQCRC_ZFC_SHIFT;
	FUNC5(val, zclk->reg);

	/*
	 * Set KICK bit in FRQCRB to update hardware setting and wait for
	 * clock change completion.
	 */
	kick = FUNC3(zclk->kick_reg);
	kick |= CPG_FRQCRB_KICK;
	FUNC5(kick, zclk->kick_reg);

	/*
	 * Note: There is no HW information about the worst case latency.
	 *
	 * Using experimental measurements, it seems that no more than
	 * ~10 iterations are needed, independently of the CPU rate.
	 * Since this value might be dependent on external xtal rate, pll1
	 * rate or even the other emulation clocks rate, use 1000 as a
	 * "super" safe value.
	 */
	for (i = 1000; i; i--) {
		if (!(FUNC3(zclk->kick_reg) & CPG_FRQCRB_KICK))
			return 0;

		FUNC1();
	}

	return -ETIMEDOUT;
}