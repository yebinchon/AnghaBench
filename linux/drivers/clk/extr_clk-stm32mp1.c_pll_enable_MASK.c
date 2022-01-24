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
struct stm32_pll_obj {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int PLL_ON ; 
 int PLL_RDY ; 
 unsigned int TIMEOUT ; 
 scalar_t__ FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct stm32_pll_obj* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw)
{
	struct stm32_pll_obj *clk_elem = FUNC4(hw);
	u32 reg;
	unsigned long flags = 0;
	unsigned int timeout = TIMEOUT;
	int bit_status = 0;

	FUNC2(clk_elem->lock, flags);

	if (FUNC0(hw))
		goto unlock;

	reg = FUNC1(clk_elem->reg);
	reg |= PLL_ON;
	FUNC6(reg, clk_elem->reg);

	/* We can't use readl_poll_timeout() because we can be blocked if
	 * someone enables this clock before clocksource changes.
	 * Only jiffies counter is available. Jiffies are incremented by
	 * interruptions and enable op does not allow to be interrupted.
	 */
	do {
		bit_status = !(FUNC1(clk_elem->reg) & PLL_RDY);

		if (bit_status)
			FUNC5(120);

	} while (bit_status && --timeout);

unlock:
	FUNC3(clk_elem->lock, flags);

	return bit_status;
}