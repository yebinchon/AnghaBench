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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  reg; } ;
struct socfpga_periph_clk {TYPE_1__ hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLK_MGR_FREE_MASK ; 
 int CLK_MGR_FREE_SHIFT ; 
 int /*<<< orphan*/  SOCFPGA_MPU_FREE_CLK ; 
 int /*<<< orphan*/  SOCFPGA_NOC_FREE_CLK ; 
 int /*<<< orphan*/  SOCFPGA_SDMMC_FREE_CLK ; 
 char* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct socfpga_periph_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC4(struct clk_hw *hwclk)
{
	struct socfpga_periph_clk *socfpgaclk = FUNC3(hwclk);
	u32 clk_src;
	const char *name = FUNC0(hwclk);

	clk_src = FUNC1(socfpgaclk->hw.reg);
	if (FUNC2(name, SOCFPGA_MPU_FREE_CLK) ||
	    FUNC2(name, SOCFPGA_NOC_FREE_CLK) ||
	    FUNC2(name, SOCFPGA_SDMMC_FREE_CLK))
		return (clk_src >> CLK_MGR_FREE_SHIFT) &
			CLK_MGR_FREE_MASK;
	else
		return 0;
}