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
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sam9x60_pll {int id; int div; scalar_t__ mul; int /*<<< orphan*/  lock; TYPE_1__* characteristics; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {scalar_t__ upll; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  PMC_PLL_ACR ; 
 int PMC_PLL_ACR_DEFAULT ; 
 int PMC_PLL_ACR_UTMIBG ; 
 int PMC_PLL_ACR_UTMIVR ; 
 int /*<<< orphan*/  PMC_PLL_CTRL0 ; 
 int /*<<< orphan*/  PMC_PLL_CTRL0_DIV_MSK ; 
 int PMC_PLL_CTRL0_ENLOCK ; 
 int PMC_PLL_CTRL0_ENPLL ; 
 int PMC_PLL_CTRL0_ENPLLCK ; 
 int /*<<< orphan*/  PMC_PLL_CTRL1 ; 
 int /*<<< orphan*/  PMC_PLL_CTRL1_MUL_MSK ; 
 int /*<<< orphan*/  PMC_PLL_UPDT ; 
 int /*<<< orphan*/  PMC_PLL_UPDT_UPDATE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct regmap*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct regmap*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,unsigned long) ; 
 struct sam9x60_pll* FUNC9 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct clk_hw *hw)
{
	struct sam9x60_pll *pll = FUNC9(hw);
	struct regmap *regmap = pll->regmap;
	unsigned long flags;
	u8 div;
	u16 mul;
	u32 val;

	FUNC7(pll->lock, flags);
	FUNC5(regmap, PMC_PLL_UPDT, pll->id);

	FUNC3(regmap, PMC_PLL_CTRL0, &val);
	div = FUNC0(PMC_PLL_CTRL0_DIV_MSK, val);

	FUNC3(regmap, PMC_PLL_CTRL1, &val);
	mul = FUNC0(PMC_PLL_CTRL1_MUL_MSK, val);

	if (FUNC6(regmap, pll->id) &&
	    (div == pll->div && mul == pll->mul)) {
		FUNC8(pll->lock, flags);
		return 0;
	}

	/* Recommended value for PMC_PLL_ACR */
	val = PMC_PLL_ACR_DEFAULT;
	FUNC5(regmap, PMC_PLL_ACR, val);

	FUNC5(regmap, PMC_PLL_CTRL1,
		     FUNC1(PMC_PLL_CTRL1_MUL_MSK, pll->mul));

	if (pll->characteristics->upll) {
		/* Enable the UTMI internal bandgap */
		val |= PMC_PLL_ACR_UTMIBG;
		FUNC5(regmap, PMC_PLL_ACR, val);

		FUNC10(10);

		/* Enable the UTMI internal regulator */
		val |= PMC_PLL_ACR_UTMIVR;
		FUNC5(regmap, PMC_PLL_ACR, val);

		FUNC10(10);
	}

	FUNC4(regmap, PMC_PLL_UPDT,
			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);

	FUNC5(regmap, PMC_PLL_CTRL0,
		     PMC_PLL_CTRL0_ENLOCK | PMC_PLL_CTRL0_ENPLL |
		     PMC_PLL_CTRL0_ENPLLCK | pll->div);

	FUNC4(regmap, PMC_PLL_UPDT,
			   PMC_PLL_UPDT_UPDATE, PMC_PLL_UPDT_UPDATE);

	while (!FUNC6(regmap, pll->id))
		FUNC2();

	FUNC8(pll->lock, flags);

	return 0;
}