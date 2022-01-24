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
struct clk_bulk_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk_bulk_data*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct clk_bulk_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct clk_bulk_data*) ; 

void FUNC3(int num_clks, struct clk_bulk_data *clks)
{
	if (FUNC0(clks))
		return;

	FUNC1(num_clks, clks);

	FUNC2(clks);
}