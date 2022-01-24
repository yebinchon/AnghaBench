#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {int /*<<< orphan*/  of_node; } ;
struct clk_init_data {int num_parents; int /*<<< orphan*/  name; int /*<<< orphan*/  ops; int /*<<< orphan*/ * parent_names; } ;
struct TYPE_4__ {int num; TYPE_2__** hws; } ;
struct __prci_data {TYPE_1__ hw_clks; } ;
struct TYPE_5__ {struct clk_init_data* init; } ;
struct __prci_clock {TYPE_2__ hw; int /*<<< orphan*/  name; scalar_t__ pwd; struct __prci_data* pd; int /*<<< orphan*/  ops; int /*<<< orphan*/  parent_name; } ;

/* Variables and functions */
 int FUNC0 (struct __prci_clock*) ; 
 int EINVAL ; 
 int EXPECTED_CLK_PARENT_COUNT ; 
 struct __prci_clock* __prci_init_clocks ; 
 int /*<<< orphan*/  FUNC1 (struct __prci_data*,scalar_t__) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct device*,TYPE_2__*) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 

__attribute__((used)) static int FUNC9(struct device *dev, struct __prci_data *pd)
{
	struct clk_init_data init = { };
	struct __prci_clock *pic;
	int parent_count, i, r;

	parent_count = FUNC8(dev->of_node);
	if (parent_count != EXPECTED_CLK_PARENT_COUNT) {
		FUNC3(dev, "expected only two parent clocks, found %d\n",
			parent_count);
		return -EINVAL;
	}

	/* Register PLLs */
	for (i = 0; i < FUNC0(__prci_init_clocks); ++i) {
		pic = &__prci_init_clocks[i];

		init.name = pic->name;
		init.parent_names = &pic->parent_name;
		init.num_parents = 1;
		init.ops = pic->ops;
		pic->hw.init = &init;

		pic->pd = pd;

		if (pic->pwd)
			FUNC1(pd, pic->pwd);

		r = FUNC6(dev, &pic->hw);
		if (r) {
			FUNC5(dev, "Failed to register clock %s: %d\n",
				 init.name, r);
			return r;
		}

		r = FUNC2(&pic->hw, pic->name, FUNC4(dev));
		if (r) {
			FUNC5(dev, "Failed to register clkdev for %s: %d\n",
				 init.name, r);
			return r;
		}

		pd->hw_clks.hws[i] = &pic->hw;
	}

	pd->hw_clks.num = i;

	r = FUNC7(dev, of_clk_hw_onecell_get,
					&pd->hw_clks);
	if (r) {
		FUNC3(dev, "could not add hw_provider: %d\n", r);
		return r;
	}

	return 0;
}