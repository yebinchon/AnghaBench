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
typedef  int u32 ;
struct ingenic_clk {struct ingenic_cgu* cgu; } ;
struct ingenic_cgu_pll_info {int /*<<< orphan*/  enable_bit; scalar_t__ reg; } ;
struct ingenic_cgu_clk_info {struct ingenic_cgu_pll_info pll; } ;
struct ingenic_cgu {int /*<<< orphan*/  lock; scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ingenic_cgu_clk_info* FUNC4 (struct ingenic_clk*) ; 
 struct ingenic_clk* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw)
{
	struct ingenic_clk *ingenic_clk = FUNC5(hw);
	struct ingenic_cgu *cgu = ingenic_clk->cgu;
	const struct ingenic_cgu_clk_info *clk_info = FUNC4(ingenic_clk);
	const struct ingenic_cgu_pll_info *pll_info = &clk_info->pll;
	unsigned long flags;
	u32 ctl;

	FUNC2(&cgu->lock, flags);
	ctl = FUNC1(cgu->base + pll_info->reg);
	FUNC3(&cgu->lock, flags);

	return !!(ctl & FUNC0(pll_info->enable_bit));
}