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
typedef  int /*<<< orphan*/  u8 ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct mtk_clk_gate {int set_ofs; int clr_ofs; int sta_ofs; TYPE_1__ hw; int /*<<< orphan*/  bit; struct regmap* regmap; } ;
struct device {int dummy; } ;
struct clk_ops {int dummy; } ;
struct clk_init_data {char const* name; unsigned long flags; char const** parent_names; int num_parents; struct clk_ops const* ops; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 unsigned long CLK_SET_RATE_PARENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 struct clk* FUNC2 (struct device*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_clk_gate*) ; 
 struct mtk_clk_gate* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct clk *FUNC5(
		const char *name,
		const char *parent_name,
		struct regmap *regmap,
		int set_ofs,
		int clr_ofs,
		int sta_ofs,
		u8 bit,
		const struct clk_ops *ops,
		unsigned long flags,
		struct device *dev)
{
	struct mtk_clk_gate *cg;
	struct clk *clk;
	struct clk_init_data init = {};

	cg = FUNC4(sizeof(*cg), GFP_KERNEL);
	if (!cg)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.flags = flags | CLK_SET_RATE_PARENT;
	init.parent_names = parent_name ? &parent_name : NULL;
	init.num_parents = parent_name ? 1 : 0;
	init.ops = ops;

	cg->regmap = regmap;
	cg->set_ofs = set_ofs;
	cg->clr_ofs = clr_ofs;
	cg->sta_ofs = sta_ofs;
	cg->bit = bit;

	cg->hw.init = &init;

	clk = FUNC2(dev, &cg->hw);
	if (FUNC1(clk))
		FUNC3(cg);

	return clk;
}