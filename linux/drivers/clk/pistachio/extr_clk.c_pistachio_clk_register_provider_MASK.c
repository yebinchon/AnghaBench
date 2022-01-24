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
struct TYPE_2__ {unsigned int clk_num; int /*<<< orphan*/ * clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,int /*<<< orphan*/ ) ; 

void FUNC4(struct pistachio_clk_provider *p)
{
	unsigned int i;

	for (i = 0; i < p->clk_data.clk_num; i++) {
		if (FUNC0(p->clk_data.clks[i]))
			FUNC3("Failed to register clock %d: %ld\n", i,
				FUNC1(p->clk_data.clks[i]));
	}

	FUNC2(p->node, of_clk_src_onecell_get, &p->clk_data);
}