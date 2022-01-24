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
struct device {int dummy; } ;
struct clk_pll_data {int dummy; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_pll {TYPE_1__ hw; struct clk_pll_data* pll_data; } ;
struct clk_init_data {char const* name; char const** parent_names; int num_parents; scalar_t__ flags; int /*<<< orphan*/ * ops; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk*) ; 
 int /*<<< orphan*/  clk_pll_ops ; 
 struct clk* FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_pll*) ; 
 struct clk_pll* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk *FUNC5(struct device *dev,
			const char *name,
			const char *parent_name,
			struct clk_pll_data *pll_data)
{
	struct clk_init_data init;
	struct clk_pll *pll;
	struct clk *clk;

	pll = FUNC4(sizeof(*pll), GFP_KERNEL);
	if (!pll)
		return FUNC0(-ENOMEM);

	init.name = name;
	init.ops = &clk_pll_ops;
	init.flags = 0;
	init.parent_names = (parent_name ? &parent_name : NULL);
	init.num_parents = (parent_name ? 1 : 0);

	pll->pll_data	= pll_data;
	pll->hw.init = &init;

	clk = FUNC2(NULL, &pll->hw);
	if (FUNC1(clk))
		goto out;

	return clk;
out:
	FUNC3(pll);
	return NULL;
}