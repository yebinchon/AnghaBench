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
struct hb_clk {int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int HB_PLL_DIVF_MASK ; 
 int HB_PLL_DIVF_SHIFT ; 
 int HB_PLL_DIVQ_MASK ; 
 int HB_PLL_DIVQ_SHIFT ; 
 int HB_PLL_EXT_BYPASS ; 
 int HB_PLL_EXT_ENA ; 
 int HB_PLL_LOCK ; 
 int HB_PLL_LOCK_500 ; 
 int HB_PLL_RESET ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,int*,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct hb_clk* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hwclk, unsigned long rate,
			    unsigned long parent_rate)
{
	struct hb_clk *hbclk = FUNC2(hwclk);
	u32 divq, divf;
	u32 reg;

	FUNC0(rate, parent_rate, &divq, &divf);

	reg = FUNC1(hbclk->reg);
	if (divf != ((reg & HB_PLL_DIVF_MASK) >> HB_PLL_DIVF_SHIFT)) {
		/* Need to re-lock PLL, so put it into bypass mode */
		reg |= HB_PLL_EXT_BYPASS;
		FUNC3(reg | HB_PLL_EXT_BYPASS, hbclk->reg);

		FUNC3(reg | HB_PLL_RESET, hbclk->reg);
		reg &= ~(HB_PLL_DIVF_MASK | HB_PLL_DIVQ_MASK);
		reg |= (divf << HB_PLL_DIVF_SHIFT) | (divq << HB_PLL_DIVQ_SHIFT);
		FUNC3(reg | HB_PLL_RESET, hbclk->reg);
		FUNC3(reg, hbclk->reg);

		while ((FUNC1(hbclk->reg) & HB_PLL_LOCK) == 0)
			;
		while ((FUNC1(hbclk->reg) & HB_PLL_LOCK_500) == 0)
			;
		reg |= HB_PLL_EXT_ENA;
		reg &= ~HB_PLL_EXT_BYPASS;
	} else {
		FUNC3(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
		reg &= ~HB_PLL_DIVQ_MASK;
		reg |= divq << HB_PLL_DIVQ_SHIFT;
		FUNC3(reg | HB_PLL_EXT_BYPASS, hbclk->reg);
	}
	FUNC3(reg, hbclk->reg);

	return 0;
}