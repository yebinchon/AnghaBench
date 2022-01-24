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
struct clk_pll14xx {scalar_t__ base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int BYPASS_MASK ; 
 scalar_t__ GNRL_CTL ; 
 int RST_MASK ; 
 int FUNC0 (struct clk_pll14xx*) ; 
 int FUNC1 (scalar_t__) ; 
 struct clk_pll14xx* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_pll14xx *pll = FUNC2(hw);
	u32 val;
	int ret;

	/*
	 * RESETB = 1 from 0, PLL starts its normal
	 * operation after lock time
	 */
	val = FUNC1(pll->base + GNRL_CTL);
	if (val & RST_MASK)
		return 0;
	val |= BYPASS_MASK;
	FUNC3(val, pll->base + GNRL_CTL);
	val |= RST_MASK;
	FUNC3(val, pll->base + GNRL_CTL);

	ret = FUNC0(pll);
	if (ret)
		return ret;

	val &= ~BYPASS_MASK;
	FUNC3(val, pll->base + GNRL_CTL);

	return 0;
}