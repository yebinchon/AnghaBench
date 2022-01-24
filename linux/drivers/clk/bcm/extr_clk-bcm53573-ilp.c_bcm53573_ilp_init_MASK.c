#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device_node {int /*<<< orphan*/  name; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct bcm53573_ilp {TYPE_1__ hw; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm53573_ilp_clk_ops ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm53573_ilp*) ; 
 struct bcm53573_ilp* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 char* FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct device_node *np)
{
	struct bcm53573_ilp *ilp;
	struct clk_init_data init = { };
	const char *parent_name;
	int err;

	ilp = FUNC5(sizeof(*ilp), GFP_KERNEL);
	if (!ilp)
		return;

	parent_name = FUNC7(np, 0);
	if (!parent_name) {
		err = -ENOENT;
		goto err_free_ilp;
	}

	ilp->regmap = FUNC10(FUNC8(np));
	if (FUNC0(ilp->regmap)) {
		err = FUNC1(ilp->regmap);
		goto err_free_ilp;
	}

	init.name = np->name;
	init.ops = &bcm53573_ilp_clk_ops;
	init.parent_names = &parent_name;
	init.num_parents = 1;

	ilp->hw.init = &init;
	err = FUNC2(NULL, &ilp->hw);
	if (err)
		goto err_free_ilp;

	err = FUNC6(np, of_clk_hw_simple_get, &ilp->hw);
	if (err)
		goto err_clk_hw_unregister;

	return;

err_clk_hw_unregister:
	FUNC3(&ilp->hw);
err_free_ilp:
	FUNC4(ilp);
	FUNC9("Failed to init ILP clock: %d\n", err);
}