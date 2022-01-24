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
struct clk_std {int enable_bit; } ;
struct clk_hw {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SIRFSOC_CLKC_CLK_EN0 ; 
 int FUNC1 (int) ; 
 struct clk_std* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	u32 reg;
	int bit;
	struct clk_std *clk = FUNC2(hw);

	bit = clk->enable_bit % 32;
	reg = clk->enable_bit / 32;
	reg = SIRFSOC_CLKC_CLK_EN0 + reg * sizeof(reg);

	return !!(FUNC1(reg) & FUNC0(bit));
}