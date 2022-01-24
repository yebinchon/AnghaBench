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
struct regmap {int dummy; } ;
struct mtk_composite {int /*<<< orphan*/  mux_width; int /*<<< orphan*/  mux_shift; int /*<<< orphan*/  mux_reg; int /*<<< orphan*/  flags; int /*<<< orphan*/  num_parents; int /*<<< orphan*/  parent_names; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_clk_cpumux {TYPE_1__ hw; struct regmap* regmap; scalar_t__ mask; int /*<<< orphan*/  shift; int /*<<< orphan*/  reg; } ;
struct clk_init_data {int /*<<< orphan*/  flags; int /*<<< orphan*/  num_parents; int /*<<< orphan*/  parent_names; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  clk_cpumux_ops ; 
 struct clk* FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_clk_cpumux*) ; 
 struct mtk_clk_cpumux* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk *
FUNC6(const struct mtk_composite *mux,
			struct regmap *regmap)
{
	struct mtk_clk_cpumux *cpumux;
	struct clk *clk;
	struct clk_init_data init;

	cpumux = FUNC5(sizeof(*cpumux), GFP_KERNEL);
	if (!cpumux)
		return FUNC1(-ENOMEM);

	init.name = mux->name;
	init.ops = &clk_cpumux_ops;
	init.parent_names = mux->parent_names;
	init.num_parents = mux->num_parents;
	init.flags = mux->flags;

	cpumux->reg = mux->mux_reg;
	cpumux->shift = mux->mux_shift;
	cpumux->mask = FUNC0(mux->mux_width) - 1;
	cpumux->regmap = regmap;
	cpumux->hw.init = &init;

	clk = FUNC3(NULL, &cpumux->hw);
	if (FUNC2(clk))
		FUNC4(cpumux);

	return clk;
}