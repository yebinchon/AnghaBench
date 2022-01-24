#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sam9x60_pll {int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; TYPE_1__* characteristics; int /*<<< orphan*/  id; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ upll; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMC_PLL_ACR ; 
 int PMC_PLL_ACR_UTMIBG ; 
 int PMC_PLL_ACR_UTMIVR ; 
 int /*<<< orphan*/  PMC_PLL_CTRL0 ; 
 int PMC_PLL_CTRL0_ENPLL ; 
 int PMC_PLL_CTRL0_ENPLLCK ; 
 int /*<<< orphan*/  PMC_PLL_UPDT ; 
 int PMC_PLL_UPDT_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct sam9x60_pll* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct sam9x60_pll *pll = FUNC4(hw);
	unsigned long flags;

	FUNC2(pll->lock, flags);

	FUNC1(pll->regmap, PMC_PLL_UPDT, pll->id);

	FUNC0(pll->regmap, PMC_PLL_CTRL0,
			   PMC_PLL_CTRL0_ENPLLCK, 0);

	FUNC0(pll->regmap, PMC_PLL_UPDT,
			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);

	FUNC0(pll->regmap, PMC_PLL_CTRL0, PMC_PLL_CTRL0_ENPLL, 0);

	if (pll->characteristics->upll)
		FUNC0(pll->regmap, PMC_PLL_ACR,
				   PMC_PLL_ACR_UTMIBG | PMC_PLL_ACR_UTMIVR, 0);

	FUNC0(pll->regmap, PMC_PLL_UPDT,
			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);

	FUNC3(pll->lock, flags);
}