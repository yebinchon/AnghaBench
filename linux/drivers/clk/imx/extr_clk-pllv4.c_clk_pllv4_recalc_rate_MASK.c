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
struct clk_pllv4 {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long BM_PLL_MULT ; 
 unsigned long BP_PLL_MULT ; 
 scalar_t__ PLL_CFG_OFFSET ; 
 scalar_t__ PLL_DENOM_OFFSET ; 
 scalar_t__ PLL_NUM_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 struct clk_pllv4* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					   unsigned long parent_rate)
{
	struct clk_pllv4 *pll = FUNC2(hw);
	u32 mult, mfn, mfd;
	u64 temp64;

	mult = FUNC1(pll->base + PLL_CFG_OFFSET);
	mult &= BM_PLL_MULT;
	mult >>= BP_PLL_MULT;

	mfn = FUNC1(pll->base + PLL_NUM_OFFSET);
	mfd = FUNC1(pll->base + PLL_DENOM_OFFSET);
	temp64 = parent_rate;
	temp64 *= mfn;
	FUNC0(temp64, mfd);

	return (parent_rate * mult) + (u32)temp64;
}