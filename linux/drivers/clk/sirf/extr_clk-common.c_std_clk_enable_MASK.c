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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SIRFSOC_CLKC_CLK_EN0 ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 struct clk_std* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	u32 val, reg;
	int bit;
	struct clk_std *clk = FUNC4(hw);

	FUNC1(clk->enable_bit < 0 || clk->enable_bit > 63);

	bit = clk->enable_bit % 32;
	reg = clk->enable_bit / 32;
	reg = SIRFSOC_CLKC_CLK_EN0 + reg * sizeof(reg);

	val = FUNC2(reg) | FUNC0(bit);
	FUNC3(val, reg);
	return 0;
}