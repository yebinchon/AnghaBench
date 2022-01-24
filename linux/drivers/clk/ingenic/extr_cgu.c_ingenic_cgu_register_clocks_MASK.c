#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int clk_num; int /*<<< orphan*/ * clks; } ;
struct ingenic_cgu {TYPE_2__ clocks; TYPE_1__* clock_info; int /*<<< orphan*/  np; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int type; } ;

/* Variables and functions */
 int CGU_CLK_EXT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ingenic_cgu*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 

int FUNC6(struct ingenic_cgu *cgu)
{
	unsigned i;
	int err;

	cgu->clocks.clks = FUNC3(cgu->clocks.clk_num, sizeof(struct clk *),
				   GFP_KERNEL);
	if (!cgu->clocks.clks) {
		err = -ENOMEM;
		goto err_out;
	}

	for (i = 0; i < cgu->clocks.clk_num; i++) {
		err = FUNC2(cgu, i);
		if (err)
			goto err_out_unregister;
	}

	err = FUNC5(cgu->np, of_clk_src_onecell_get,
				  &cgu->clocks);
	if (err)
		goto err_out_unregister;

	return 0;

err_out_unregister:
	for (i = 0; i < cgu->clocks.clk_num; i++) {
		if (!cgu->clocks.clks[i])
			continue;
		if (cgu->clock_info[i].type & CGU_CLK_EXT)
			FUNC0(cgu->clocks.clks[i]);
		else
			FUNC1(cgu->clocks.clks[i]);
	}
	FUNC4(cgu->clocks.clks);
err_out:
	return err;
}