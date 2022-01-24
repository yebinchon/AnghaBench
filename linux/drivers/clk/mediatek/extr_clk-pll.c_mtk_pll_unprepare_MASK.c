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
struct mtk_clk_pll {scalar_t__ pwr_addr; scalar_t__ base_addr; TYPE_1__* data; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; int rst_bar_mask; } ;

/* Variables and functions */
 int CON0_BASE_EN ; 
 int CON0_ISO_EN ; 
 int CON0_PWR_ON ; 
 int HAVE_RST_BAR ; 
 scalar_t__ REG_CON0 ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_clk_pll*) ; 
 int FUNC1 (scalar_t__) ; 
 struct mtk_clk_pll* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct mtk_clk_pll *pll = FUNC2(hw);
	u32 r;

	if (pll->data->flags & HAVE_RST_BAR) {
		r = FUNC1(pll->base_addr + REG_CON0);
		r &= ~pll->data->rst_bar_mask;
		FUNC3(r, pll->base_addr + REG_CON0);
	}

	FUNC0(pll);

	r = FUNC1(pll->base_addr + REG_CON0);
	r &= ~CON0_BASE_EN;
	FUNC3(r, pll->base_addr + REG_CON0);

	r = FUNC1(pll->pwr_addr) | CON0_ISO_EN;
	FUNC3(r, pll->pwr_addr);

	r = FUNC1(pll->pwr_addr) & ~CON0_PWR_ON;
	FUNC3(r, pll->pwr_addr);
}