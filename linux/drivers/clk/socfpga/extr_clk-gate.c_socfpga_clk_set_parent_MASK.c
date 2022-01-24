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
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hwclk, u8 parent)
{
	u32 src_reg;
	const char *name = FUNC0(hwclk);

	if (FUNC2(name, SOCFPGA_L4_MP_CLK)) {
		src_reg = FUNC1(clk_mgr_base_addr + CLKMGR_L4SRC);
		src_reg &= ~0x1;
		src_reg |= parent;
		FUNC3(src_reg, clk_mgr_base_addr + CLKMGR_L4SRC);
	} else if (FUNC2(name, SOCFPGA_L4_SP_CLK)) {
		src_reg = FUNC1(clk_mgr_base_addr + CLKMGR_L4SRC);
		src_reg &= ~0x2;
		src_reg |= (parent << 1);
		FUNC3(src_reg, clk_mgr_base_addr + CLKMGR_L4SRC);
	} else {
		src_reg = FUNC1(clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
		if (FUNC2(name, SOCFPGA_MMC_CLK)) {
			src_reg &= ~0x3;
			src_reg |= parent;
		} else if (FUNC2(name, SOCFPGA_NAND_CLK) ||
			FUNC2(name, SOCFPGA_NAND_X_CLK)) {
			src_reg &= ~0xC;
			src_reg |= (parent << 2);
		} else {/* QSPI clock */
			src_reg &= ~0x30;
			src_reg |= (parent << 4);
		}
		FUNC3(src_reg, clk_mgr_base_addr + CLKMGR_PERPLL_SRC);
	}

	return 0;
}