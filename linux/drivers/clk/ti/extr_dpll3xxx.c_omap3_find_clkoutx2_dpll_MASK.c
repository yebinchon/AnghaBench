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
struct clk_hw_omap {int /*<<< orphan*/  dpll_data; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct clk_hw* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 struct clk_hw_omap* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static struct clk_hw_omap *FUNC4(struct clk_hw *hw)
{
	struct clk_hw_omap *pclk = NULL;

	/* Walk up the parents of clk, looking for a DPLL */
	do {
		do {
			hw = FUNC1(hw);
		} while (hw && (!FUNC2(hw)));
		if (!hw)
			break;
		pclk = FUNC3(hw);
	} while (pclk && !pclk->dpll_data);

	/* clk does not have a DPLL as a parent?  error in the clock data */
	if (!pclk) {
		FUNC0(1);
		return NULL;
	}

	return pclk;
}