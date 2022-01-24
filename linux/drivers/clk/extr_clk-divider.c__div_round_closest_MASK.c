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
typedef  int /*<<< orphan*/  u64 ;
struct clk_div_table {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_DIVIDER_POWER_OF_TWO ; 
 void* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct clk_div_table const*,int) ; 
 int FUNC4 (struct clk_div_table const*,int) ; 

__attribute__((used)) static int FUNC5(const struct clk_div_table *table,
			      unsigned long parent_rate, unsigned long rate,
			      unsigned long flags)
{
	int up, down;
	unsigned long up_rate, down_rate;

	up = FUNC0((u64)parent_rate, rate);
	down = parent_rate / rate;

	if (flags & CLK_DIVIDER_POWER_OF_TWO) {
		up = FUNC2(up);
		down = FUNC1(down);
	} else if (table) {
		up = FUNC4(table, up);
		down = FUNC3(table, down);
	}

	up_rate = FUNC0((u64)parent_rate, up);
	down_rate = FUNC0((u64)parent_rate, down);

	return (rate - up_rate) <= (down_rate - rate) ? up : down;
}