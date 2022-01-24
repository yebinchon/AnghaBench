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
typedef  unsigned long u32 ;
struct cpu_clk {int /*<<< orphan*/  cpu; scalar_t__ reg_base; scalar_t__ pmu_dfs; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 unsigned long PMU_DFS_RATIO_MASK ; 
 unsigned long PMU_DFS_RATIO_SHIFT ; 
 unsigned long SYS_CTRL_CLK_DIVIDER_CTRL2_NBCLK_RATIO_SHIFT ; 
 scalar_t__ SYS_CTRL_CLK_DIVIDER_CTRL2_OFFSET ; 
 scalar_t__ SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET ; 
 unsigned long SYS_CTRL_CLK_DIVIDER_CTRL_RESET_ALL ; 
 unsigned long SYS_CTRL_CLK_DIVIDER_CTRL_RESET_SHIFT ; 
 unsigned long SYS_CTRL_CLK_DIVIDER_MASK ; 
 unsigned long FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 struct cpu_clk* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hwclk, unsigned long rate,
			       unsigned long parent_rate)
{
	u32 reg;
	unsigned long fabric_div, target_div, cur_rate;
	struct cpu_clk *cpuclk = FUNC3(hwclk);

	/*
	 * PMU DFS registers are not mapped, Device Tree does not
	 * describes them. We cannot change the frequency dynamically.
	 */
	if (!cpuclk->pmu_dfs)
		return -ENODEV;

	cur_rate = FUNC0(hwclk);

	reg = FUNC2(cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL2_OFFSET);
	fabric_div = (reg >> SYS_CTRL_CLK_DIVIDER_CTRL2_NBCLK_RATIO_SHIFT) &
		SYS_CTRL_CLK_DIVIDER_MASK;

	/* Frequency is going up */
	if (rate == 2 * cur_rate)
		target_div = fabric_div / 2;
	/* Frequency is going down */
	else
		target_div = fabric_div;

	if (target_div == 0)
		target_div = 1;

	reg = FUNC2(cpuclk->pmu_dfs);
	reg &= ~(PMU_DFS_RATIO_MASK << PMU_DFS_RATIO_SHIFT);
	reg |= (target_div << PMU_DFS_RATIO_SHIFT);
	FUNC4(reg, cpuclk->pmu_dfs);

	reg = FUNC2(cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET);
	reg |= (SYS_CTRL_CLK_DIVIDER_CTRL_RESET_ALL <<
		SYS_CTRL_CLK_DIVIDER_CTRL_RESET_SHIFT);
	FUNC4(reg, cpuclk->reg_base + SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET);

	return FUNC1(cpuclk->cpu);
}