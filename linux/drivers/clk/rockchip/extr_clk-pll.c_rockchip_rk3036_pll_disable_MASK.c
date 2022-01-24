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
struct rockchip_clk_pll {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  RK3036_PLLCON1_PWRDOWN ; 
 struct rockchip_clk_pll* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct rockchip_clk_pll *pll = FUNC2(hw);

	FUNC3(FUNC0(RK3036_PLLCON1_PWRDOWN,
			     RK3036_PLLCON1_PWRDOWN, 0),
	       pll->reg_base + FUNC1(1));
}