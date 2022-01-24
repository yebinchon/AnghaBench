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
struct clk_unit {int regofs; scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  bit; int /*<<< orphan*/  idle_bit; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CLK_UNIT_NOC_CLOCK ; 
 scalar_t__ CLK_UNIT_NOC_SOCKET ; 
 int SIRFSOC_CLKC_ROOT_CLK_EN0_CLR ; 
 int SIRFSOC_CLKC_ROOT_CLK_EN0_SET ; 
 int SIRFSOC_NOC_CLK_IDLEREQ_CLR ; 
 int SIRFSOC_NOC_CLK_IDLEREQ_SET ; 
 int /*<<< orphan*/  SIRFSOC_NOC_CLK_IDLE_STATUS ; 
 int SIRFSOC_NOC_CLK_SLVRDY_CLR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_unit* FUNC7 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct clk_hw *hw)
{
	u32 reg;
	u32 i = 0;
	struct clk_unit *clk = FUNC7(hw);
	unsigned long flags;

	reg = clk->regofs + SIRFSOC_CLKC_ROOT_CLK_EN0_CLR - SIRFSOC_CLKC_ROOT_CLK_EN0_SET;
	FUNC5(clk->lock, flags);
	if (clk->type == CLK_UNIT_NOC_CLOCK) {
		FUNC2(FUNC0(clk->idle_bit), SIRFSOC_NOC_CLK_IDLEREQ_SET);
		while (!(FUNC1(SIRFSOC_NOC_CLK_IDLE_STATUS) &
				FUNC0(clk->idle_bit)) && (i++ < 100)) {
			FUNC3();
			FUNC8(10);
		}

		if (i == 100) {
			FUNC4("unit NoC Clock disconnect Error:timeout\n");
			/*once timeout, undo idlereq by CLR*/
			FUNC2(FUNC0(clk->idle_bit), SIRFSOC_NOC_CLK_IDLEREQ_CLR);
			goto err;
		}

	} else if (clk->type == CLK_UNIT_NOC_SOCKET)
		FUNC2(FUNC0(clk->idle_bit), SIRFSOC_NOC_CLK_SLVRDY_CLR);

	FUNC2(FUNC0(clk->bit), reg);
err:
	FUNC6(clk->lock, flags);
}