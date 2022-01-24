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
struct frac_rate_tbl {unsigned long div; } ;
struct clk_hw {int dummy; } ;
struct clk_frac {scalar_t__ lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  rtbl_cnt; struct frac_rate_tbl* rtbl; } ;

/* Variables and functions */
 unsigned long DIV_FACTOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  frac_calc_rate ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct clk_frac* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long drate,
				unsigned long prate)
{
	struct clk_frac *frac = FUNC4(hw);
	struct frac_rate_tbl *rtbl = frac->rtbl;
	unsigned long flags = 0, val;
	int i;

	FUNC0(hw, drate, prate, frac_calc_rate, frac->rtbl_cnt,
			&i);

	if (frac->lock)
		FUNC2(frac->lock, flags);

	val = FUNC1(frac->reg) & ~DIV_FACTOR_MASK;
	val |= rtbl[i].div & DIV_FACTOR_MASK;
	FUNC5(val, frac->reg);

	if (frac->lock)
		FUNC3(frac->lock, flags);

	return 0;
}