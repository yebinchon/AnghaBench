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
typedef  int u32 ;
struct clk_omap_divider {int shift; int context; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int (* clk_readl ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (struct clk_omap_divider*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* ti_clk_ll_ops ; 
 struct clk_omap_divider* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC3(struct clk_hw *hw)
{
	struct clk_omap_divider *divider = FUNC2(hw);
	u32 val;

	val = ti_clk_ll_ops->clk_readl(&divider->reg) >> divider->shift;
	divider->context = val & FUNC0(divider);

	return 0;
}