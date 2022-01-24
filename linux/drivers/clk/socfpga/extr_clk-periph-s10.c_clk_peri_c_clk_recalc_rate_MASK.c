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
typedef  unsigned long u32 ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;
struct socfpga_periph_clk {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ SWCTRLBTCLKSEN_SHIFT ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 struct socfpga_periph_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hwclk,
					     unsigned long parent_rate)
{
	struct socfpga_periph_clk *socfpgaclk = FUNC2(hwclk);
	unsigned long div = 1;
	u32 val;

	val = FUNC1(socfpgaclk->hw.reg);
	val &= FUNC0(SWCTRLBTCLKSEN_SHIFT - 1, 0);
	parent_rate /= val;

	return parent_rate / div;
}