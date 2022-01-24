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
struct clk_pllv3_vf610_mf {int mfn; int mfd; int mfi; } ;
struct clk_pllv3 {int div_mask; scalar_t__ base; scalar_t__ denom_offset; scalar_t__ num_offset; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,struct clk_pllv3_vf610_mf) ; 
 int FUNC1 (scalar_t__) ; 
 struct clk_pllv3* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					      unsigned long parent_rate)
{
	struct clk_pllv3 *pll = FUNC2(hw);
	struct clk_pllv3_vf610_mf mf;

	mf.mfn = FUNC1(pll->base + pll->num_offset);
	mf.mfd = FUNC1(pll->base + pll->denom_offset);
	mf.mfi = (FUNC1(pll->base) & pll->div_mask) ? 22 : 20;

	return FUNC0(parent_rate, mf);
}