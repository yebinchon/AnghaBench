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
struct clk_pll {TYPE_1__* vco; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ lock; int /*<<< orphan*/  cfg_reg; } ;

/* Variables and functions */
 unsigned int PLL_DIV_P_MASK ; 
 unsigned int PLL_DIV_P_SHIFT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct clk_pll* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw, unsigned long
		parent_rate)
{
	struct clk_pll *pll = FUNC3(hw);
	unsigned long flags = 0;
	unsigned int p;

	if (pll->vco->lock)
		FUNC1(pll->vco->lock, flags);

	p = FUNC0(pll->vco->cfg_reg);

	if (pll->vco->lock)
		FUNC2(pll->vco->lock, flags);

	p = (p >> PLL_DIV_P_SHIFT) & PLL_DIV_P_MASK;

	return parent_rate / (1 << p);
}