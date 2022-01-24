#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct r9a06g032_priv {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  r2; int /*<<< orphan*/  g2; int /*<<< orphan*/  r1; int /*<<< orphan*/  g1; } ;
struct r9a06g032_clkdesc {int /*<<< orphan*/  name; TYPE_2__ dual; int /*<<< orphan*/  index; } ;
struct TYPE_7__ {struct clk_init_data* init; } ;
struct r9a06g032_clk_dualgate {TYPE_3__ hw; TYPE_1__* gate; int /*<<< orphan*/  selector; int /*<<< orphan*/  index; struct r9a06g032_priv* clocks; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  reset; int /*<<< orphan*/  gate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_IS_CRITICAL ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct clk*) ; 
 struct clk* FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct r9a06g032_clk_dualgate*) ; 
 struct r9a06g032_clk_dualgate* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  r9a06g032_clk_dualgate_ops ; 

__attribute__((used)) static struct clk *
FUNC6(struct r9a06g032_priv *clocks,
			    const char *parent_name,
			    const struct r9a06g032_clkdesc *desc,
			    uint16_t sel)
{
	struct r9a06g032_clk_dualgate *g;
	struct clk *clk;
	struct clk_init_data init;

	/* allocate the gate */
	g = FUNC3(sizeof(*g), GFP_KERNEL);
	if (!g)
		return NULL;
	g->clocks = clocks;
	g->index = desc->index;
	g->selector = sel;
	g->gate[0].gate = desc->dual.g1;
	g->gate[0].reset = desc->dual.r1;
	g->gate[1].gate = desc->dual.g2;
	g->gate[1].reset = desc->dual.r2;

	init.name = desc->name;
	init.ops = &r9a06g032_clk_dualgate_ops;
	init.flags = CLK_SET_RATE_PARENT;
	init.parent_names = &parent_name;
	init.num_parents = 1;
	g->hw.init = &init;
	/*
	 * important here, some clocks are already in use by the CM3, we
	 * have to assume they are not Linux's to play with and try to disable
	 * at the end of the boot!
	 */
	if (FUNC5(&g->hw)) {
		init.flags |= CLK_IS_CRITICAL;
		FUNC4("%s was enabled, making read-only\n", desc->name);
	}

	clk = FUNC1(NULL, &g->hw);
	if (FUNC0(clk)) {
		FUNC2(g);
		return NULL;
	}
	return clk;
}