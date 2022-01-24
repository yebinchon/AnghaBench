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
struct clk_unit {scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  idle_bit; int /*<<< orphan*/  bit; int /*<<< orphan*/  regofs; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLK_UNIT_NOC_CLOCK ; 
 scalar_t__ CLK_UNIT_NOC_SOCKET ; 
 int /*<<< orphan*/  SIRFSOC_NOC_CLK_IDLEREQ_CLR ; 
 int /*<<< orphan*/  SIRFSOC_NOC_CLK_SLVRDY_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_unit* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	u32 reg;
	struct clk_unit *clk = FUNC4(hw);
	unsigned long flags;

	reg = clk->regofs;

	FUNC2(clk->lock, flags);
	FUNC1(FUNC0(clk->bit), reg);
	if (clk->type == CLK_UNIT_NOC_CLOCK)
		FUNC1(FUNC0(clk->idle_bit), SIRFSOC_NOC_CLK_IDLEREQ_CLR);
	else if (clk->type == CLK_UNIT_NOC_SOCKET)
		FUNC1(FUNC0(clk->idle_bit), SIRFSOC_NOC_CLK_SLVRDY_SET);

	FUNC3(clk->lock, flags);
	return 0;
}