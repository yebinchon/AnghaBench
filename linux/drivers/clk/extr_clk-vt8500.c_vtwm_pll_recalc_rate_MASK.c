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
typedef  int /*<<< orphan*/  u32 ;
struct clk_pll {int type; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
#define  PLL_TYPE_VT8500 131 
#define  PLL_TYPE_WM8650 130 
#define  PLL_TYPE_WM8750 129 
#define  PLL_TYPE_WM8850 128 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct clk_pll* FUNC9 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC10(struct clk_hw *hw,
				unsigned long parent_rate)
{
	struct clk_pll *pll = FUNC9(hw);
	u32 pll_val = FUNC8(pll->reg);
	unsigned long pll_freq;

	switch (pll->type) {
	case PLL_TYPE_VT8500:
		pll_freq = parent_rate * FUNC1(pll_val);
		pll_freq /= FUNC0(pll_val);
		break;
	case PLL_TYPE_WM8650:
		pll_freq = parent_rate * FUNC3(pll_val);
		pll_freq /= FUNC2(pll_val);
		break;
	case PLL_TYPE_WM8750:
		pll_freq = parent_rate * FUNC5(pll_val);
		pll_freq /= FUNC4(pll_val);
		break;
	case PLL_TYPE_WM8850:
		pll_freq = parent_rate * FUNC7(pll_val);
		pll_freq /= FUNC6(pll_val);
		break;
	default:
		pll_freq = 0;
	}

	return pll_freq;
}