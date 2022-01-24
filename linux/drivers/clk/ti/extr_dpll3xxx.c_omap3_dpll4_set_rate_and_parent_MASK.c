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
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int TI_CLK_DPLL4_DENY_REPROGRAM ; 
 int FUNC0 (struct clk_hw*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 () ; 

int FUNC3(struct clk_hw *hw, unsigned long rate,
				    unsigned long parent_rate, u8 index)
{
	if (FUNC2()->flags & TI_CLK_DPLL4_DENY_REPROGRAM) {
		FUNC1("clock: DPLL4 cannot change rate due to silicon 'Limitation 2.5' on 3430ES1.\n");
		return -EINVAL;
	}

	return FUNC0(hw, rate, parent_rate,
						      index);
}