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
struct TYPE_2__ {struct clk** clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct clk*) ; 
 int /*<<< orphan*/  FUNC1 (struct clk*) ; 
 int FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC4(struct pistachio_clk_provider *p,
				unsigned int *clk_ids, unsigned int num)
{
	unsigned int i;
	int err;

	for (i = 0; i < num; i++) {
		struct clk *clk = p->clk_data.clks[clk_ids[i]];

		if (FUNC0(clk))
			continue;

		err = FUNC2(clk);
		if (err)
			FUNC3("Failed to enable clock %s: %d\n",
			       FUNC1(clk), err);
	}
}