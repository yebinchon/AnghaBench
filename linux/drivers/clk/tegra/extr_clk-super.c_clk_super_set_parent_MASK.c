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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct tegra_clk_super_mux {int flags; scalar_t__ div2_index; scalar_t__ pllx_index; scalar_t__ lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ SUPER_LP_DIV2_BYPASS ; 
 int /*<<< orphan*/  SUPER_STATE_IDLE ; 
 scalar_t__ SUPER_STATE_MASK ; 
 int /*<<< orphan*/  SUPER_STATE_RUN ; 
 int TEGRA_DIVIDER_2 ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct tegra_clk_super_mux*) ; 
 scalar_t__ FUNC7 (struct tegra_clk_super_mux*,int /*<<< orphan*/ ) ; 
 struct tegra_clk_super_mux* FUNC8 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct clk_hw *hw, u8 index)
{
	struct tegra_clk_super_mux *mux = FUNC8(hw);
	u32 val, state;
	int err = 0;
	u8 parent_index, shift;
	unsigned long flags = 0;

	if (mux->lock)
		FUNC3(mux->lock, flags);

	val = FUNC2(mux->reg);
	state = val & SUPER_STATE_MASK;
	FUNC0((state != FUNC5(SUPER_STATE_RUN)) &&
	       (state != FUNC5(SUPER_STATE_IDLE)));
	shift = (state == FUNC5(SUPER_STATE_IDLE)) ?
		FUNC7(mux, SUPER_STATE_IDLE) :
		FUNC7(mux, SUPER_STATE_RUN);

	/*
	 * For LP mode super-clock switch between PLLX direct
	 * and divided-by-2 outputs is allowed only when other
	 * than PLLX clock source is current parent.
	 */
	if ((mux->flags & TEGRA_DIVIDER_2) && ((index == mux->div2_index) ||
					       (index == mux->pllx_index))) {
		parent_index = FUNC1(hw);
		if ((parent_index == mux->div2_index) ||
		    (parent_index == mux->pllx_index)) {
			err = -EINVAL;
			goto out;
		}

		val ^= SUPER_LP_DIV2_BYPASS;
		FUNC10(val, mux->reg);
		FUNC9(2);

		if (index == mux->div2_index)
			index = mux->pllx_index;
	}
	val &= ~((FUNC6(mux)) << shift);
	val |= (index & (FUNC6(mux))) << shift;

	FUNC10(val, mux->reg);
	FUNC9(2);

out:
	if (mux->lock)
		FUNC4(mux->lock, flags);

	return err;
}