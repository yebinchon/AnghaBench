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
struct lpc32xx_clk_gate {int flags; int /*<<< orphan*/  reg; int /*<<< orphan*/  bit_idx; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int CLK_GATE_SET_TO_DISABLE ; 
 int /*<<< orphan*/  clk_regmap ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 struct lpc32xx_clk_gate* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct lpc32xx_clk_gate *clk = FUNC2(hw);
	u32 mask = FUNC0(clk->bit_idx);
	u32 val = (clk->flags & CLK_GATE_SET_TO_DISABLE ? mask : 0x0);

	FUNC1(clk_regmap, clk->reg, mask, val);
}