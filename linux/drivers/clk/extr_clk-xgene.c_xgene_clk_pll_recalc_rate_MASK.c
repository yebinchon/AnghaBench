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
typedef  unsigned long u32 ;
struct xgene_clk_pll {int version; scalar_t__ type; scalar_t__ pll_offset; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 
 scalar_t__ PLL_TYPE_PCP ; 
 unsigned long FUNC4 (unsigned long) ; 
 scalar_t__ FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 
 struct xgene_clk_pll* FUNC8 (struct clk_hw*) ; 
 unsigned long FUNC9 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC10(struct clk_hw *hw,
				unsigned long parent_rate)
{
	struct xgene_clk_pll *pllclk = FUNC8(hw);
	unsigned long fref;
	unsigned long fvco;
	u32 pll;
	u32 nref;
	u32 nout;
	u32 nfb;

	pll = FUNC9(pllclk->reg + pllclk->pll_offset);

	if (pllclk->version <= 1) {
		if (pllclk->type == PLL_TYPE_PCP) {
			/*
			* PLL VCO = Reference clock * NF
			* PCP PLL = PLL_VCO / 2
			*/
			nout = 2;
			fvco = parent_rate * (FUNC3(pll) + 4);
		} else {
			/*
			* Fref = Reference Clock / NREF;
			* Fvco = Fref * NFB;
			* Fout = Fvco / NOUT;
			*/
			nref = FUNC2(pll) + 1;
			nout = FUNC1(pll) + 1;
			nfb = FUNC0(pll);
			fref = parent_rate / nref;
			fvco = fref * nfb;
		}
	} else {
		/*
		 * fvco = Reference clock * FBDIVC
		 * PLL freq = fvco / NOUT
		 */
		nout = FUNC5(pll) ? 2 : 3;
		fvco = parent_rate * FUNC4(pll);
	}
	FUNC7("%s pll recalc rate %ld parent %ld version %d\n",
		 FUNC6(hw), fvco / nout, parent_rate,
		 pllclk->version);

	return fvco / nout;
}