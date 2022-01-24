#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk_hw {int dummy; } ;
struct ap_cpu_clk {unsigned int cluster; TYPE_1__* pll_regs; int /*<<< orphan*/  pll_cr_base; } ;
struct TYPE_2__ {unsigned int divider_reg; unsigned int cluster_offset; int divider_mask; int divider_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int*) ; 
 struct ap_cpu_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hw,
					    unsigned long parent_rate)
{
	struct ap_cpu_clk *clk = FUNC1(hw);
	unsigned int cpu_clkdiv_reg;
	int cpu_clkdiv_ratio;

	cpu_clkdiv_reg = clk->pll_regs->divider_reg +
		(clk->cluster * clk->pll_regs->cluster_offset);
	FUNC0(clk->pll_cr_base, cpu_clkdiv_reg, &cpu_clkdiv_ratio);
	cpu_clkdiv_ratio &= clk->pll_regs->divider_mask;
	cpu_clkdiv_ratio >>= clk->pll_regs->divider_offset;

	return parent_rate / cpu_clkdiv_ratio;
}