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
struct iproc_pll {scalar_t__ control_base; } ;
struct TYPE_2__ {int enable_shift; scalar_t__ offset; } ;
struct iproc_clk_ctrl {int flags; TYPE_1__ enable; } ;
struct iproc_clk {struct iproc_pll* pll; struct iproc_clk_ctrl* ctrl; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int IPROC_CLK_AON ; 
 int /*<<< orphan*/  FUNC0 (struct iproc_pll*,scalar_t__,scalar_t__,int) ; 
 int FUNC1 (scalar_t__) ; 
 struct iproc_clk* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct iproc_clk *clk = FUNC2(hw);
	const struct iproc_clk_ctrl *ctrl = clk->ctrl;
	struct iproc_pll *pll = clk->pll;
	u32 val;

	if (ctrl->flags & IPROC_CLK_AON)
		return;

	val = FUNC1(pll->control_base + ctrl->enable.offset);
	val |= 1 << ctrl->enable.enable_shift;
	FUNC0(pll, pll->control_base, ctrl->enable.offset, val);
}