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
typedef  int /*<<< orphan*/  u32 ;
struct clk_pllv3_vf610_mf {int mfi; int /*<<< orphan*/  mfd; int /*<<< orphan*/  mfn; } ;
struct clk_pllv3 {scalar_t__ denom_offset; scalar_t__ base; scalar_t__ num_offset; int /*<<< orphan*/  div_mask; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 struct clk_pllv3_vf610_mf FUNC0 (unsigned long,unsigned long) ; 
 int FUNC1 (struct clk_pllv3*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct clk_pllv3* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
		unsigned long parent_rate)
{
	struct clk_pllv3 *pll = FUNC3(hw);
	struct clk_pllv3_vf610_mf mf =
			FUNC0(parent_rate, rate);
	u32 val;

	val = FUNC2(pll->base);
	if (mf.mfi == 20)
		val &= ~pll->div_mask;	/* clear bit for mfi=20 */
	else
		val |= pll->div_mask;	/* set bit for mfi=22 */
	FUNC4(val, pll->base);

	FUNC4(mf.mfn, pll->base + pll->num_offset);
	FUNC4(mf.mfd, pll->base + pll->denom_offset);

	return FUNC1(pll);
}