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
struct omap_hwmod {int opt_clks_cnt; TYPE_1__* opt_clks; int /*<<< orphan*/  main_clk; } ;
struct omap_device {int dummy; } ;
struct TYPE_2__ {char* role; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_device*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct omap_device *od,
				     struct omap_hwmod *oh)
{
	int i;

	FUNC0(od, "fck", oh->main_clk);

	for (i = 0; i < oh->opt_clks_cnt; i++)
		FUNC0(od, oh->opt_clks[i].role, oh->opt_clks[i].clk);
}