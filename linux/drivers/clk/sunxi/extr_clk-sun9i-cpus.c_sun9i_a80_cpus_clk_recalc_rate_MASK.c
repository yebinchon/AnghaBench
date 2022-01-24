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
typedef  int /*<<< orphan*/  u32 ;
struct sun9i_a80_cpus_clk {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUN9I_CPUS_MUX_PARENT_PLL4 ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sun9i_a80_cpus_clk* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
						    unsigned long parent_rate)
{
	struct sun9i_a80_cpus_clk *cpus = FUNC4(hw);
	unsigned long rate;
	u32 reg;

	/* Fetch the register value */
	reg = FUNC3(cpus->reg);

	/* apply pre-divider first if parent is pll4 */
	if (FUNC1(reg) == SUN9I_CPUS_MUX_PARENT_PLL4)
		parent_rate /= FUNC2(reg) + 1;

	/* clk divider */
	rate = parent_rate / (FUNC0(reg) + 1);

	return rate;
}