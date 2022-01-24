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
struct pll_clock {int /*<<< orphan*/  pllcr; int /*<<< orphan*/  sckcr; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  clklock ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pll_clock* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw, unsigned long rate,
			unsigned long parent_rate)
{
	int pll;
	unsigned char val;
	unsigned long flags;
	struct pll_clock *pll_clock = FUNC3(hw);

	pll = ((rate / parent_rate) / 2) & 0x03;
	FUNC1(&clklock, flags);
	val = FUNC0(pll_clock->sckcr);
	val |= 0x08;
	FUNC4(val, pll_clock->sckcr);
	val = FUNC0(pll_clock->pllcr);
	val &= ~0x03;
	val |= pll;
	FUNC4(val, pll_clock->pllcr);
	FUNC2(&clklock, flags);
	return 0;
}