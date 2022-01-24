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
struct TYPE_2__ {int clk_num; struct clk** clks; } ;
struct mmp_clk_unit {int nr_clks; TYPE_1__ clk_data; struct clk** clk_table; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct clk** FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

void FUNC2(struct device_node *np, struct mmp_clk_unit *unit,
		int nr_clks)
{
	struct clk **clk_table;

	clk_table = FUNC0(nr_clks, sizeof(struct clk *), GFP_KERNEL);
	if (!clk_table)
		return;

	unit->clk_table = clk_table;
	unit->nr_clks = nr_clks;
	unit->clk_data.clks = clk_table;
	unit->clk_data.clk_num = nr_clks;
	FUNC1(np, of_clk_src_onecell_get, &unit->clk_data);
}