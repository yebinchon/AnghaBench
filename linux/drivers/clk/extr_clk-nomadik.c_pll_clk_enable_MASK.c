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
struct clk_pll {int id; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ SRC_PLLCR ; 
 int SRC_PLLCR_PLL1EN ; 
 int SRC_PLLCR_PLL1OVER ; 
 int SRC_PLLCR_PLL2EN ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ src_base ; 
 int /*<<< orphan*/  src_lock ; 
 struct clk_pll* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct clk_pll *pll = FUNC3(hw);
	u32 val;

	FUNC1(&src_lock);
	val = FUNC0(src_base + SRC_PLLCR);
	if (pll->id == 1) {
		if (val & SRC_PLLCR_PLL1OVER) {
			val |= SRC_PLLCR_PLL1EN;
			FUNC4(val, src_base + SRC_PLLCR);
		}
	} else if (pll->id == 2) {
		val |= SRC_PLLCR_PLL2EN;
		FUNC4(val, src_base + SRC_PLLCR);
	}
	FUNC2(&src_lock);
	return 0;
}