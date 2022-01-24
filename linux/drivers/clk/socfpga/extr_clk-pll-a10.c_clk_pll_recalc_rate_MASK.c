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
struct TYPE_2__ {int reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long SOCFPGA_PLL_DIVF_MASK ; 
 unsigned long SOCFPGA_PLL_DIVF_SHIFT ; 
 unsigned long SOCFPGA_PLL_DIVQ_MASK ; 
 unsigned long SOCFPGA_PLL_DIVQ_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long,int) ; 
 unsigned long FUNC1 (int) ; 
 struct socfpga_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hwclk,
					 unsigned long parent_rate)
{
	struct socfpga_pll *socfpgaclk = FUNC2(hwclk);
	unsigned long divf, divq, reg;
	unsigned long long vco_freq;

	/* read VCO1 reg for numerator and denominator */
	reg = FUNC1(socfpgaclk->hw.reg + 0x4);
	divf = (reg & SOCFPGA_PLL_DIVF_MASK) >> SOCFPGA_PLL_DIVF_SHIFT;
	divq = (reg & SOCFPGA_PLL_DIVQ_MASK) >> SOCFPGA_PLL_DIVQ_SHIFT;
	vco_freq = (unsigned long long)parent_rate * (divf + 1);
	FUNC0(vco_freq, (1 + divq));
	return (unsigned long)vco_freq;
}