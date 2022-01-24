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
struct TYPE_4__ {int /*<<< orphan*/  clk_num; struct clk** clks; } ;
struct ti_adpll_data {int pa; TYPE_2__ outputs; int /*<<< orphan*/  dev; TYPE_1__* clocks; } ;
struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {void (* unregister ) (struct clk*) ;struct clk_lookup* cl; struct clk* clk; } ;

/* Variables and functions */
 int ADPLL_MAX_CON_ID ; 
 int ENOMEM ; 
 struct clk_lookup* FUNC0 (struct clk*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char const*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (char const*,char) ; 

__attribute__((used)) static int FUNC5(struct ti_adpll_data *d, struct clk *clock,
				int index, int output_index, const char *name,
				void (*unregister)(struct clk *clk))
{
	struct clk_lookup *cl;
	const char *postfix = NULL;
	char con_id[ADPLL_MAX_CON_ID];

	d->clocks[index].clk = clock;
	d->clocks[index].unregister = unregister;

	/* Separate con_id in format "pll040dcoclkldo" to fit MAX_CON_ID */
	postfix = FUNC4(name, '.');
	if (postfix && FUNC3(postfix) > 1) {
		if (FUNC3(postfix) > ADPLL_MAX_CON_ID)
			FUNC1(d->dev, "clock %s con_id lookup may fail\n",
				 name);
		FUNC2(con_id, 16, "pll%03lx%s", d->pa & 0xfff, postfix + 1);
		cl = FUNC0(clock, con_id, NULL);
		if (!cl)
			return -ENOMEM;
		d->clocks[index].cl = cl;
	} else {
		FUNC1(d->dev, "no con_id for clock %s\n", name);
	}

	if (output_index < 0)
		return 0;

	d->outputs.clks[output_index] = clock;
	d->outputs.clk_num++;

	return 0;
}