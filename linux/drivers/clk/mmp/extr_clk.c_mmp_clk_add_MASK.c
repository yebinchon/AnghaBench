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
struct mmp_clk_unit {unsigned int nr_clks; struct clk** clk_table; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,...) ; 

void FUNC2(struct mmp_clk_unit *unit, unsigned int id,
			struct clk *clk)
{
	if (FUNC0(clk)) {
		FUNC1("CLK %d has invalid pointer %p\n", id, clk);
		return;
	}
	if (id >= unit->nr_clks) {
		FUNC1("CLK %d is invalid\n", id);
		return;
	}

	unit->clk_table[id] = clk;
}