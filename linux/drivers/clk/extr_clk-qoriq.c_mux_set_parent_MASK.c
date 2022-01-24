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
typedef  size_t u8 ;
typedef  int u32 ;
struct mux_hwclock {size_t num_parents; int* parent_to_clksel; int /*<<< orphan*/  reg; int /*<<< orphan*/  cg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CLKSEL_MASK ; 
 int CLKSEL_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct mux_hwclock* FUNC1 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC2(struct clk_hw *hw, u8 idx)
{
	struct mux_hwclock *hwc = FUNC1(hw);
	u32 clksel;

	if (idx >= hwc->num_parents)
		return -EINVAL;

	clksel = hwc->parent_to_clksel[idx];
	FUNC0(hwc->cg, (clksel << CLKSEL_SHIFT) & CLKSEL_MASK, hwc->reg);

	return 0;
}