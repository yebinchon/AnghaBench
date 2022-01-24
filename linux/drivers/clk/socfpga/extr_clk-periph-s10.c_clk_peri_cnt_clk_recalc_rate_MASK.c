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
struct TYPE_2__ {scalar_t__ reg; } ;
struct socfpga_periph_clk {long fixed_div; TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 struct socfpga_periph_clk* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk_hw *hwclk,
					     unsigned long parent_rate)
{
	struct socfpga_periph_clk *socfpgaclk = FUNC1(hwclk);
	unsigned long div = 1;

	if (socfpgaclk->fixed_div) {
		div = socfpgaclk->fixed_div;
	} else {
		if (socfpgaclk->hw.reg)
			div = ((FUNC0(socfpgaclk->hw.reg) & 0x7ff) + 1);
	}

	return parent_rate / div;
}