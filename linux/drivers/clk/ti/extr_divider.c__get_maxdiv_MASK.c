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
struct clk_omap_divider {int flags; scalar_t__ table; } ;

/* Variables and functions */
 int CLK_DIVIDER_ONE_BASED ; 
 int CLK_DIVIDER_POWER_OF_TWO ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct clk_omap_divider*) ; 

__attribute__((used)) static unsigned int FUNC2(struct clk_omap_divider *divider)
{
	if (divider->flags & CLK_DIVIDER_ONE_BASED)
		return FUNC1(divider);
	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
		return 1 << FUNC1(divider);
	if (divider->table)
		return FUNC0(divider->table);
	return FUNC1(divider) + 1;
}