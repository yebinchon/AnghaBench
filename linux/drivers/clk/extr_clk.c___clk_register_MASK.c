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
struct device_node {int dummy; } ;
struct device {TYPE_1__* driver; } ;
struct clk_init_data {int /*<<< orphan*/  num_parents; int /*<<< orphan*/  flags; scalar_t__ ops; int /*<<< orphan*/  name; } ;
struct clk_hw {struct clk* clk; struct clk_core* core; struct clk_init_data* init; } ;
struct clk_core {int rpm_enabled; int /*<<< orphan*/  name; int /*<<< orphan*/  clks; int /*<<< orphan*/  max_rate; scalar_t__ min_rate; int /*<<< orphan*/  num_parents; int /*<<< orphan*/  flags; struct clk_hw* hw; int /*<<< orphan*/  owner; struct device_node* of_node; struct device* dev; scalar_t__ ops; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct clk* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct clk*) ; 
 int FUNC3 (struct clk*) ; 
 int /*<<< orphan*/  ULONG_MAX ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (struct clk_core*) ; 
 struct clk* FUNC6 (struct clk_core*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC8 (struct clk_core*,struct clk*) ; 
 int FUNC9 (struct clk_core*,struct clk_init_data const*) ; 
 int /*<<< orphan*/  FUNC10 (struct clk*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct clk*) ; 
 int /*<<< orphan*/  FUNC14 (struct clk_core*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct clk_core* FUNC17 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (struct device*) ; 

__attribute__((used)) static struct clk *
FUNC19(struct device *dev, struct device_node *np, struct clk_hw *hw)
{
	int ret;
	struct clk_core *core;
	const struct clk_init_data *init = hw->init;

	/*
	 * The init data is not supposed to be used outside of registration path.
	 * Set it to NULL so that provider drivers can't use it either and so that
	 * we catch use of hw->init early on in the core.
	 */
	hw->init = NULL;

	core = FUNC17(sizeof(*core), GFP_KERNEL);
	if (!core) {
		ret = -ENOMEM;
		goto fail_out;
	}

	core->name = FUNC16(init->name, GFP_KERNEL);
	if (!core->name) {
		ret = -ENOMEM;
		goto fail_name;
	}

	if (FUNC4(!init->ops)) {
		ret = -EINVAL;
		goto fail_ops;
	}
	core->ops = init->ops;

	if (dev && FUNC18(dev))
		core->rpm_enabled = true;
	core->dev = dev;
	core->of_node = np;
	if (dev && dev->driver)
		core->owner = dev->driver->owner;
	core->hw = hw;
	core->flags = init->flags;
	core->num_parents = init->num_parents;
	core->min_rate = 0;
	core->max_rate = ULONG_MAX;
	hw->core = core;

	ret = FUNC9(core, init);
	if (ret)
		goto fail_parents;

	FUNC1(&core->clks);

	/*
	 * Don't call clk_hw_create_clk() here because that would pin the
	 * provider module to itself and prevent it from ever being removed.
	 */
	hw->clk = FUNC6(core, NULL, NULL);
	if (FUNC2(hw->clk)) {
		ret = FUNC3(hw->clk);
		goto fail_create_clk;
	}

	FUNC8(hw->core, hw->clk);

	ret = FUNC5(core);
	if (!ret)
		return hw->clk;

	FUNC11();
	FUNC10(hw->clk);
	FUNC12();

	FUNC13(hw->clk);
	hw->clk = NULL;

fail_create_clk:
	FUNC7(core);
fail_parents:
fail_ops:
	FUNC15(core->name);
fail_name:
	FUNC14(core);
fail_out:
	return FUNC0(ret);
}