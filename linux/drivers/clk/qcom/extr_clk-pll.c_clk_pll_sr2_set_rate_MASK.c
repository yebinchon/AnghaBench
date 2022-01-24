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
struct pll_freq_tbl {int /*<<< orphan*/  n; int /*<<< orphan*/  m; int /*<<< orphan*/  l; } ;
struct TYPE_2__ {int /*<<< orphan*/  regmap; } ;
struct clk_pll {int /*<<< orphan*/  n_reg; TYPE_1__ clkr; int /*<<< orphan*/  m_reg; int /*<<< orphan*/  l_reg; int /*<<< orphan*/  mode_reg; int /*<<< orphan*/  freq_tbl; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int PLL_BYPASSNL ; 
 int PLL_OUTCTRL ; 
 int PLL_RESET_N ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk_hw*) ; 
 struct pll_freq_tbl* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct clk_pll* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int
FUNC6(struct clk_hw *hw, unsigned long rate, unsigned long prate)
{
	struct clk_pll *pll = FUNC5(hw);
	const struct pll_freq_tbl *f;
	bool enabled;
	u32 mode;
	u32 enable_mask = PLL_OUTCTRL | PLL_BYPASSNL | PLL_RESET_N;

	f = FUNC2(pll->freq_tbl, rate);
	if (!f)
		return -EINVAL;

	FUNC3(pll->clkr.regmap, pll->mode_reg, &mode);
	enabled = (mode & enable_mask) == enable_mask;

	if (enabled)
		FUNC0(hw);

	FUNC4(pll->clkr.regmap, pll->l_reg, 0x3ff, f->l);
	FUNC4(pll->clkr.regmap, pll->m_reg, 0x7ffff, f->m);
	FUNC4(pll->clkr.regmap, pll->n_reg, 0x7ffff, f->n);

	if (enabled)
		FUNC1(hw);

	return 0;
}