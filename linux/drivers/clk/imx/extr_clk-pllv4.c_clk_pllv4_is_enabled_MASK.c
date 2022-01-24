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
struct clk_pllv4 {int /*<<< orphan*/  base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLL_EN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct clk_pllv4* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw)
{
	struct clk_pllv4 *pll = FUNC1(hw);

	if (FUNC0(pll->base) & PLL_EN)
		return 1;

	return 0;
}