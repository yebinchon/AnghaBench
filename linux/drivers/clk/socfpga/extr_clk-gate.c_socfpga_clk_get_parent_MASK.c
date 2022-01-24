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
typedef  int u8 ;
typedef  int u32 ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ CLKMGR_L4SRC ; 
 scalar_t__ CLKMGR_PERPLL_SRC ; 
 int /*<<< orphan*/  SOCFPGA_L4_MP_CLK ; 
 int /*<<< orphan*/  SOCFPGA_L4_SP_CLK ; 
 int /*<<< orphan*/  SOCFPGA_MMC_CLK ; 
 int /*<<< orphan*/  SOCFPGA_NAND_CLK ; 
 int /*<<< orphan*/  SOCFPGA_NAND_X_CLK ; 
 char* FUNC0 (struct clk_hw*) ; 
 scalar_t__ clk_mgr_base_addr ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hwclk)
{
	u32 l4_src;
	u32 perpll_src;
	const char *name = FUNC0(hwclk);

	if (FUNC2(name, SOCFPGA_L4_MP_CLK)) {
		l4_src = FUNC1(clk_mgr_base_addr + CLKMGR_L4SRC);
		return l4_src &= 0x1;
	}
	if (FUNC2(name, SOCFPGA_L4_SP_CLK)) {
		l4_src = FUNC1(clk_mgr_base_addr + CLKMGR_L4SRC);
		return !!(l4_src & 2);
	}

	perpll_src = FUNC1(clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
	if (FUNC2(name, SOCFPGA_MMC_CLK))
		return perpll_src &= 0x3;
	if (FUNC2(name, SOCFPGA_NAND_CLK) ||
	    FUNC2(name, SOCFPGA_NAND_X_CLK))
		return (perpll_src >> 2) & 3;

	/* QSPI clock */
	return (perpll_src >> 4) & 3;

}