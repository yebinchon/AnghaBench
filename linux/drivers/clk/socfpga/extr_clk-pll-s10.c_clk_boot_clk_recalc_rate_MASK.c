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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;
struct socfpga_pll {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int SWCTRLBTCLKSEL_MASK ; 
 int SWCTRLBTCLKSEL_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct socfpga_pll* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hwclk,
					 unsigned long parent_rate)
{
	struct socfpga_pll *socfpgaclk = FUNC1(hwclk);
	u32 div = 1;

	div = ((FUNC0(socfpgaclk->hw.reg) &
		SWCTRLBTCLKSEL_MASK) >>
		SWCTRLBTCLKSEL_SHIFT);
	div += 1;
	return parent_rate /= div;
}