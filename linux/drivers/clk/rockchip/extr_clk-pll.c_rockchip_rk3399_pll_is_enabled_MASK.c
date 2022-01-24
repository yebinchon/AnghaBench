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
struct rockchip_clk_pll {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int RK3399_PLLCON3_PWRDOWN ; 
 int FUNC1 (scalar_t__) ; 
 struct rockchip_clk_pll* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct rockchip_clk_pll *pll = FUNC2(hw);
	u32 pllcon = FUNC1(pll->reg_base + FUNC0(3));

	return !(pllcon & RK3399_PLLCON3_PWRDOWN);
}