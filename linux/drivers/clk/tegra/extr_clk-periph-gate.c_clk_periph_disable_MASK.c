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
struct tegra_clk_periph_gate {scalar_t__* enable_refcnt; size_t clk_num; int flags; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int TEGRA_PERIPH_ON_APB ; 
 int /*<<< orphan*/  FUNC0 (struct tegra_clk_periph_gate*) ; 
 int /*<<< orphan*/  periph_ref_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct tegra_clk_periph_gate* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct tegra_clk_periph_gate*) ; 

__attribute__((used)) static void FUNC6(struct clk_hw *hw)
{
	struct tegra_clk_periph_gate *gate = FUNC4(hw);
	unsigned long flags = 0;

	FUNC1(&periph_ref_lock, flags);

	gate->enable_refcnt[gate->clk_num]--;
	if (gate->enable_refcnt[gate->clk_num] > 0) {
		FUNC2(&periph_ref_lock, flags);
		return;
	}

	/*
	 * If peripheral is in the APB bus then read the APB bus to
	 * flush the write operation in apb bus. This will avoid the
	 * peripheral access after disabling clock
	 */
	if (gate->flags & TEGRA_PERIPH_ON_APB)
		FUNC3();

	FUNC5(FUNC0(gate), gate);

	FUNC2(&periph_ref_lock, flags);
}