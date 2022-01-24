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
struct clk_div_table {int div; } ;

/* Variables and functions */
 int FUNC0 (struct clk_div_table const*) ; 

__attribute__((used)) static int FUNC1(const struct clk_div_table *table, int div)
{
	const struct clk_div_table *clkt;
	int down = FUNC0(table);

	for (clkt = table; clkt->div; clkt++) {
		if (clkt->div == div)
			return clkt->div;
		else if (clkt->div > div)
			continue;

		if ((div - clkt->div) < (div - down))
			down = clkt->div;
	}

	return down;
}