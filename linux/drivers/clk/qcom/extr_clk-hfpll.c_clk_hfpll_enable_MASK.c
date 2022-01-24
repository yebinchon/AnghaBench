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
struct regmap {int dummy; } ;
struct hfpll_data {int /*<<< orphan*/  mode_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;
struct clk_hfpll {int /*<<< orphan*/  lock; TYPE_1__ clkr; struct hfpll_data* d; } ;

/* Variables and functions */
 int PLL_BYPASSNL ; 
 int PLL_OUTCTRL ; 
 int PLL_RESET_N ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct clk_hfpll* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	unsigned long flags;
	struct clk_hfpll *h = FUNC4(hw);
	struct hfpll_data const *hd = h->d;
	struct regmap *regmap = h->clkr.regmap;
	u32 mode;

	FUNC2(&h->lock, flags);
	FUNC1(regmap, hd->mode_reg, &mode);
	if (!(mode & (PLL_BYPASSNL | PLL_RESET_N | PLL_OUTCTRL)))
		FUNC0(hw);
	FUNC3(&h->lock, flags);

	return 0;
}