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
struct TYPE_2__ {int reg_clk_mask; scalar_t__ csr_reg; scalar_t__ reg_clk_offset; } ;
struct xgene_clk {TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 struct xgene_clk* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct xgene_clk *pclk = FUNC2(hw);
	u32 data = 0;

	if (pclk->param.csr_reg) {
		FUNC1("%s clock checking\n", FUNC0(hw));
		data = FUNC3(pclk->param.csr_reg +
					pclk->param.reg_clk_offset);
		FUNC1("%s clock is %s\n", FUNC0(hw),
			data & pclk->param.reg_clk_mask ? "enabled" :
							"disabled");
	}

	if (!pclk->param.csr_reg)
		return 1;
	return data & pclk->param.reg_clk_mask ? 1 : 0;
}