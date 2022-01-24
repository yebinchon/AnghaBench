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
typedef  int u16 ;
struct clk_syscon {int /*<<< orphan*/  en_bit; int /*<<< orphan*/  en_reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct clk_syscon* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_syscon *sclk = FUNC2(hw);
	u16 val;

	/* If no enable register defined, it's always-on */
	if (!sclk->en_reg)
		return 1;

	val = FUNC1(sclk->en_reg);
	val &= FUNC0(sclk->en_bit);

	return val ? 1 : 0;
}