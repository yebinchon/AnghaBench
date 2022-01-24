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
struct r9a06g032_priv {int dummy; } ;
struct r9a06g032_clkdesc {scalar_t__* div_table; int /*<<< orphan*/  div_max; int /*<<< orphan*/  div_min; int /*<<< orphan*/  reg; int /*<<< orphan*/  index; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct r9a06g032_clk_div {TYPE_1__ hw; int /*<<< orphan*/  table_size; scalar_t__* table; int /*<<< orphan*/  max; int /*<<< orphan*/  min; int /*<<< orphan*/  reg; int /*<<< orphan*/  index; struct r9a06g032_priv* clocks; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  CLK_SET_RATE_PARENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct r9a06g032_clk_div*) ; 
 struct r9a06g032_clk_div* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r9a06g032_clk_div_ops ; 

__attribute__((used)) static struct clk *
FUNC5(struct r9a06g032_priv *clocks,
		       const char *parent_name,
		       const struct r9a06g032_clkdesc *desc)
{
	struct r9a06g032_clk_div *div;
	struct clk *clk;
	struct clk_init_data init;
	unsigned int i;

	div = FUNC4(sizeof(*div), GFP_KERNEL);
	if (!div)
		return NULL;

	init.name = desc->name;
	init.ops = &r9a06g032_clk_div_ops;
	init.flags = CLK_SET_RATE_PARENT;
	init.parent_names = parent_name ? &parent_name : NULL;
	init.num_parents = parent_name ? 1 : 0;

	div->clocks = clocks;
	div->index = desc->index;
	div->reg = desc->reg;
	div->hw.init = &init;
	div->min = desc->div_min;
	div->max = desc->div_max;
	/* populate (optional) divider table fixed values */
	for (i = 0; i < FUNC0(div->table) &&
	     i < FUNC0(desc->div_table) && desc->div_table[i]; i++) {
		div->table[div->table_size++] = desc->div_table[i];
	}

	clk = FUNC2(NULL, &div->hw);
	if (FUNC1(clk)) {
		FUNC3(div);
		return NULL;
	}
	return clk;
}