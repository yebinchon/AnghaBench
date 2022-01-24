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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct krait_mux_clk {int reparent; int /*<<< orphan*/  en_mask; int /*<<< orphan*/  parent_map; } ;
struct clk_hw {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct krait_mux_clk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct krait_mux_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw, u8 index)
{
	struct krait_mux_clk *mux = FUNC3(hw);
	u32 sel;

	sel = FUNC2(mux->parent_map, 0, index);
	mux->en_mask = sel;
	/* Don't touch mux if CPU is off as it won't work */
	if (FUNC0(hw->clk))
		FUNC1(mux, sel);

	mux->reparent = true;

	return 0;
}