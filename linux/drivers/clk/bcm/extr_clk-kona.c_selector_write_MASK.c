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
struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int dummy; } ;
struct bcm_clk_sel {scalar_t__ clk_index; } ;
struct bcm_clk_gate {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccu_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct ccu_data*) ; 
 int FUNC2 (struct ccu_data*,struct bcm_clk_gate*,struct bcm_clk_sel*,struct bcm_clk_trig*) ; 
 unsigned long FUNC3 (struct ccu_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct ccu_data*,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct ccu_data *ccu, struct bcm_clk_gate *gate,
			struct bcm_clk_sel *sel, struct bcm_clk_trig *trig,
			u8 index)
{
	unsigned long flags;
	u8 previous;
	int ret;

	previous = sel->clk_index;
	if (previous == index)
		return 0;	/* No change */

	sel->clk_index = index;

	flags = FUNC3(ccu);
	FUNC1(ccu);

	ret = FUNC2(ccu, gate, sel, trig);

	FUNC0(ccu);
	FUNC4(ccu, flags);

	if (ret)
		sel->clk_index = previous;	/* Revert the change */

	return ret;
}