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
struct clk_zx_pll {int pd_bit; int /*<<< orphan*/  reg_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_zx_pll* FUNC2 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct clk_hw *hw)
{
	struct clk_zx_pll *zx_pll = FUNC2(hw);
	u32 reg;

	if (zx_pll->pd_bit > 31)
		return;

	reg = FUNC1(zx_pll->reg_base);
	FUNC3(reg | FUNC0(zx_pll->pd_bit), zx_pll->reg_base);
}