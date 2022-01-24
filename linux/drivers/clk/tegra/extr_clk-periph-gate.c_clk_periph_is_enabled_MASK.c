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
struct tegra_clk_periph_gate {int flags; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int TEGRA_PERIPH_NO_RESET ; 
 int FUNC0 (struct tegra_clk_periph_gate*) ; 
 int FUNC1 (struct tegra_clk_periph_gate*) ; 
 int FUNC2 (struct tegra_clk_periph_gate*) ; 
 struct tegra_clk_periph_gate* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct tegra_clk_periph_gate *gate = FUNC3(hw);
	int state = 1;

	if (!(FUNC1(gate) & FUNC0(gate)))
		state = 0;

	if (!(gate->flags & TEGRA_PERIPH_NO_RESET))
		if (FUNC2(gate) & FUNC0(gate))
			state = 0;

	return state;
}