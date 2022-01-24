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
typedef  unsigned long u32 ;
struct clk_pllv3 {unsigned long div_mask; scalar_t__ base; scalar_t__ denom_offset; scalar_t__ num_offset; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct clk_pllv3* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					      unsigned long parent_rate)
{
	struct clk_pllv3 *pll = FUNC2(hw);
	u32 mfn = FUNC1(pll->base + pll->num_offset);
	u32 mfd = FUNC1(pll->base + pll->denom_offset);
	u32 div = FUNC1(pll->base) & pll->div_mask;
	u64 temp64 = (u64)parent_rate;

	temp64 *= mfn;
	FUNC0(temp64, mfd);

	return parent_rate * div + (unsigned long)temp64;
}