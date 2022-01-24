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
struct ingenic_clk {size_t idx; struct ingenic_cgu* cgu; } ;
struct ingenic_cgu_clk_info {int type; int /*<<< orphan*/  gate; } ;
struct ingenic_cgu {int /*<<< orphan*/  lock; struct ingenic_cgu_clk_info* clock_info; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int CGU_CLK_GATE ; 
 int /*<<< orphan*/  FUNC0 (struct ingenic_cgu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ingenic_clk* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw)
{
	struct ingenic_clk *ingenic_clk = FUNC3(hw);
	struct ingenic_cgu *cgu = ingenic_clk->cgu;
	const struct ingenic_cgu_clk_info *clk_info;
	unsigned long flags;
	int enabled = 1;

	clk_info = &cgu->clock_info[ingenic_clk->idx];

	if (clk_info->type & CGU_CLK_GATE) {
		FUNC1(&cgu->lock, flags);
		enabled = !FUNC0(cgu, &clk_info->gate);
		FUNC2(&cgu->lock, flags);
	}

	return enabled;
}