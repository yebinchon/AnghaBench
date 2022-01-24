#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ingenic_tcu_clk_info {int /*<<< orphan*/  tcsr_reg; } ;
struct ingenic_tcu_clk {int /*<<< orphan*/  idx; TYPE_1__* tcu; struct ingenic_tcu_clk_info* info; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCU_TCSR_PARENT_CLOCK_MASK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_hw*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ingenic_tcu_clk* FUNC5 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, u8 idx)
{
	struct ingenic_tcu_clk *tcu_clk = FUNC5(hw);
	const struct ingenic_tcu_clk_info *info = tcu_clk->info;
	bool was_enabled;
	int ret;

	was_enabled = FUNC3(hw);

	ret = FUNC4(tcu_clk->tcu->map, info->tcsr_reg,
				 TCU_TCSR_PARENT_CLOCK_MASK, FUNC0(idx));
	FUNC1(ret < 0, "Unable to update TCSR %d", tcu_clk->idx);

	if (!was_enabled)
		FUNC2(hw);

	return 0;
}