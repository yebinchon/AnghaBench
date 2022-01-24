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
struct pll_rate_tbl {unsigned long mode; unsigned long n; unsigned long m; } ;
struct clk_vco {scalar_t__ lock; int /*<<< orphan*/  cfg_reg; int /*<<< orphan*/  mode_reg; int /*<<< orphan*/  rtbl_cnt; struct pll_rate_tbl* rtbl; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long PLL_DITH_FDBK_M_MASK ; 
 unsigned long PLL_DITH_FDBK_M_SHIFT ; 
 unsigned long PLL_DIV_N_MASK ; 
 unsigned long PLL_DIV_N_SHIFT ; 
 unsigned long PLL_MODE_MASK ; 
 unsigned long PLL_MODE_SHIFT ; 
 unsigned long PLL_NORM_FDBK_M_MASK ; 
 unsigned long PLL_NORM_FDBK_M_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct clk_vco* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  vco_calc_rate ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long drate,
				unsigned long prate)
{
	struct clk_vco *vco = FUNC4(hw);
	struct pll_rate_tbl *rtbl = vco->rtbl;
	unsigned long flags = 0, val;
	int i;

	FUNC0(hw, drate, prate, vco_calc_rate, vco->rtbl_cnt,
			&i);

	if (vco->lock)
		FUNC2(vco->lock, flags);

	val = FUNC1(vco->mode_reg);
	val &= ~(PLL_MODE_MASK << PLL_MODE_SHIFT);
	val |= (rtbl[i].mode & PLL_MODE_MASK) << PLL_MODE_SHIFT;
	FUNC5(val, vco->mode_reg);

	val = FUNC1(vco->cfg_reg);
	val &= ~(PLL_DIV_N_MASK << PLL_DIV_N_SHIFT);
	val |= (rtbl[i].n & PLL_DIV_N_MASK) << PLL_DIV_N_SHIFT;

	val &= ~(PLL_DITH_FDBK_M_MASK << PLL_DITH_FDBK_M_SHIFT);
	if (rtbl[i].mode)
		val |= (rtbl[i].m & PLL_DITH_FDBK_M_MASK) <<
			PLL_DITH_FDBK_M_SHIFT;
	else
		val |= (rtbl[i].m & PLL_NORM_FDBK_M_MASK) <<
			PLL_NORM_FDBK_M_SHIFT;

	FUNC5(val, vco->cfg_reg);

	if (vco->lock)
		FUNC3(vco->lock, flags);

	return 0;
}