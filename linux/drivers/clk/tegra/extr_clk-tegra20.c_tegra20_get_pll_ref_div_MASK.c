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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ OSC_CTRL ; 
#define  OSC_CTRL_PLL_REF_DIV_1 130 
#define  OSC_CTRL_PLL_REF_DIV_2 129 
#define  OSC_CTRL_PLL_REF_DIV_4 128 
 int OSC_CTRL_PLL_REF_DIV_MASK ; 
 scalar_t__ clk_base ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC3(void)
{
	u32 pll_ref_div = FUNC2(clk_base + OSC_CTRL) &
		OSC_CTRL_PLL_REF_DIV_MASK;

	switch (pll_ref_div) {
	case OSC_CTRL_PLL_REF_DIV_1:
		return 1;
	case OSC_CTRL_PLL_REF_DIV_2:
		return 2;
	case OSC_CTRL_PLL_REF_DIV_4:
		return 4;
	default:
		FUNC1("Invalid pll ref divider %d\n", pll_ref_div);
		FUNC0();
	}
	return 0;
}