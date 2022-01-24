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
struct tegra_clk_periph_gate {int* enable_refcnt; size_t clk_num; int flags; scalar_t__ clk_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ LVL2_CLK_GATE_OVRE ; 
 int TEGRA_PERIPH_MANUAL_RESET ; 
 int TEGRA_PERIPH_NO_RESET ; 
 int TEGRA_PERIPH_WAR_1005168 ; 
 int FUNC1 (struct tegra_clk_periph_gate*) ; 
 int /*<<< orphan*/  periph_ref_lock ; 
 int FUNC2 (struct tegra_clk_periph_gate*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tegra_clk_periph_gate* FUNC5 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,struct tegra_clk_periph_gate*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct tegra_clk_periph_gate*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct clk_hw *hw)
{
	struct tegra_clk_periph_gate *gate = FUNC5(hw);
	unsigned long flags = 0;

	FUNC3(&periph_ref_lock, flags);

	gate->enable_refcnt[gate->clk_num]++;
	if (gate->enable_refcnt[gate->clk_num] > 1) {
		FUNC4(&periph_ref_lock, flags);
		return 0;
	}

	FUNC7(FUNC1(gate), gate);
	FUNC6(2);

	if (!(gate->flags & TEGRA_PERIPH_NO_RESET) &&
	    !(gate->flags & TEGRA_PERIPH_MANUAL_RESET)) {
		if (FUNC2(gate) & FUNC1(gate)) {
			FUNC6(5); /* reset propogation delay */
			FUNC8(FUNC1(gate), gate);
		}
	}

	if (gate->flags & TEGRA_PERIPH_WAR_1005168) {
		FUNC9(0, gate->clk_base + LVL2_CLK_GATE_OVRE);
		FUNC9(FUNC0(22), gate->clk_base + LVL2_CLK_GATE_OVRE);
		FUNC6(1);
		FUNC9(0, gate->clk_base + LVL2_CLK_GATE_OVRE);
	}

	FUNC4(&periph_ref_lock, flags);

	return 0;
}