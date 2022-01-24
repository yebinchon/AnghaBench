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
typedef  unsigned long u64 ;
typedef  int u32 ;
struct stm32_fractional_divider {int mshift; int nshift; scalar_t__ nwidth; int /*<<< orphan*/  nreg; scalar_t__ mwidth; int /*<<< orphan*/  mreg; } ;
struct stm32_pll_obj {struct stm32_fractional_divider div; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_hw*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct stm32_pll_obj* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC6(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct stm32_pll_obj *clk_elem = FUNC5(hw);
	struct stm32_fractional_divider *fd = &clk_elem->div;
	unsigned long m, n;
	u32 val, mask;
	u64 rate, rate1 = 0;

	val = FUNC4(fd->mreg);
	mask = FUNC0(fd->mwidth - 1, 0) << fd->mshift;
	m = (val & mask) >> fd->mshift;

	val = FUNC4(fd->nreg);
	mask = FUNC0(fd->nwidth - 1, 0) << fd->nshift;
	n = ((val & mask) >> fd->nshift) + 1;

	if (!n || !m)
		return parent_rate;

	rate = (u64)parent_rate * n;
	FUNC1(rate, m);

	if (FUNC2(hw)) {
		val = FUNC3(hw);
		rate1 = (u64)parent_rate * (u64)val;
		FUNC1(rate1, (m * 8191));
	}

	return rate + rate1;
}