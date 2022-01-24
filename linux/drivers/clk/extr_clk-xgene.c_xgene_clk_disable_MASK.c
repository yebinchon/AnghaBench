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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {scalar_t__ reg_clk_offset; scalar_t__ csr_reg; int /*<<< orphan*/  reg_clk_mask; scalar_t__ reg_csr_offset; int /*<<< orphan*/  reg_csr_mask; } ;
struct xgene_clk {scalar_t__ lock; TYPE_1__ param; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct xgene_clk* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct clk_hw *hw)
{
	struct xgene_clk *pclk = FUNC4(hw);
	unsigned long flags = 0;
	u32 data;

	if (pclk->lock)
		FUNC2(pclk->lock, flags);

	if (pclk->param.csr_reg) {
		FUNC1("%s clock disabled\n", FUNC0(hw));
		/* First put the CSR in reset */
		data = FUNC5(pclk->param.csr_reg +
					pclk->param.reg_csr_offset);
		data |= pclk->param.reg_csr_mask;
		FUNC6(data, pclk->param.csr_reg +
					pclk->param.reg_csr_offset);

		/* Second disable the clock */
		data = FUNC5(pclk->param.csr_reg +
					pclk->param.reg_clk_offset);
		data &= ~pclk->param.reg_clk_mask;
		FUNC6(data, pclk->param.csr_reg +
					pclk->param.reg_clk_offset);
	}

	if (pclk->lock)
		FUNC3(pclk->lock, flags);
}