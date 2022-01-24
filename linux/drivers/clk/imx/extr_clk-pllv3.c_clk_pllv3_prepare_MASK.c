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
struct clk_pllv3 {int /*<<< orphan*/  base; int /*<<< orphan*/  power_bit; scalar_t__ powerup_set; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct clk_pllv3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_pllv3* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct clk_pllv3 *pll = FUNC2(hw);
	u32 val;

	val = FUNC1(pll->base);
	if (pll->powerup_set)
		val |= pll->power_bit;
	else
		val &= ~pll->power_bit;
	FUNC3(val, pll->base);

	return FUNC0(pll);
}