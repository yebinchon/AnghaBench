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
struct clk_hw {int dummy; } ;
struct clk_cpu {int /*<<< orphan*/  div; int /*<<< orphan*/  pll; int /*<<< orphan*/  mux; int /*<<< orphan*/  step; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_cpu* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw, unsigned long rate,
			    unsigned long parent_rate)
{
	struct clk_cpu *cpu = FUNC2(hw);
	int ret;

	/* switch to PLL bypass clock */
	ret = FUNC0(cpu->mux, cpu->step);
	if (ret)
		return ret;

	/* reprogram PLL */
	ret = FUNC1(cpu->pll, rate);
	if (ret) {
		FUNC0(cpu->mux, cpu->pll);
		return ret;
	}
	/* switch back to PLL clock */
	FUNC0(cpu->mux, cpu->pll);

	/* Ensure the divider is what we expect */
	FUNC1(cpu->div, rate);

	return 0;
}