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
typedef  int u8 ;
typedef  unsigned int u32 ;
typedef  int u16 ;
struct regmap {int dummy; } ;
struct clk_pll_layout {int mul_mask; int mul_shift; int /*<<< orphan*/  pllr_mask; } ;
struct clk_pll_characteristics {int* out; int* icpll; } ;
struct clk_pll {int id; int div; int mul; size_t range; struct clk_pll_characteristics* characteristics; struct clk_pll_layout* layout; struct regmap* regmap; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int AT91_PMC_PLLICPR ; 
 int AT91_PMC_SR ; 
 int PLL_COUNT_SHIFT ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int PLL_MAX_COUNT ; 
 int FUNC3 (unsigned int,struct clk_pll_layout const*) ; 
 int PLL_OUT_SHIFT ; 
 int FUNC4 (int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct regmap*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct regmap*,int,int /*<<< orphan*/ ,int) ; 
 struct clk_pll* FUNC10 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC11(struct clk_hw *hw)
{
	struct clk_pll *pll = FUNC10(hw);
	struct regmap *regmap = pll->regmap;
	const struct clk_pll_layout *layout = pll->layout;
	const struct clk_pll_characteristics *characteristics =
							pll->characteristics;
	u8 id = pll->id;
	u32 mask = FUNC5(id);
	int offset = FUNC4(id);
	u8 out = 0;
	unsigned int pllr;
	unsigned int status;
	u8 div;
	u16 mul;

	FUNC8(regmap, offset, &pllr);
	div = FUNC0(pllr);
	mul = FUNC3(pllr, layout);

	FUNC8(regmap, AT91_PMC_SR, &status);
	if ((status & mask) &&
	    (div == pll->div && mul == pll->mul))
		return 0;

	if (characteristics->out)
		out = characteristics->out[pll->range];

	if (characteristics->icpll)
		FUNC9(regmap, AT91_PMC_PLLICPR, FUNC1(id),
			characteristics->icpll[pll->range] << FUNC2(id));

	FUNC9(regmap, offset, layout->pllr_mask,
			pll->div | (PLL_MAX_COUNT << PLL_COUNT_SHIFT) |
			(out << PLL_OUT_SHIFT) |
			((pll->mul & layout->mul_mask) << layout->mul_shift));

	while (!FUNC6(regmap, pll->id))
		FUNC7();

	return 0;
}