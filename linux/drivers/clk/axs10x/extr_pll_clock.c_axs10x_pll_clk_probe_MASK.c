#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {struct clk_init_data* init; } ;
struct axs10x_pll_clk {TYPE_3__ hw; int /*<<< orphan*/  pll_cfg; struct device* dev; void* lock; void* base; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  axs10x_pll_ops ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct device*,TYPE_3__*) ; 
 void* FUNC4 (struct device*,struct resource*) ; 
 struct axs10x_pll_clk* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 char* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	const char *parent_name;
	struct axs10x_pll_clk *pll_clk;
	struct resource *mem;
	struct clk_init_data init = { };
	int ret;

	pll_clk = FUNC5(dev, sizeof(*pll_clk), GFP_KERNEL);
	if (!pll_clk)
		return -ENOMEM;

	mem = FUNC9(pdev, IORESOURCE_MEM, 0);
	pll_clk->base = FUNC4(dev, mem);
	if (FUNC0(pll_clk->base))
		return FUNC1(pll_clk->base);

	mem = FUNC9(pdev, IORESOURCE_MEM, 1);
	pll_clk->lock = FUNC4(dev, mem);
	if (FUNC0(pll_clk->lock))
		return FUNC1(pll_clk->lock);

	init.name = dev->of_node->name;
	init.ops = &axs10x_pll_ops;
	parent_name = FUNC7(dev->of_node, 0);
	init.parent_names = &parent_name;
	init.num_parents = 1;
	pll_clk->hw.init = &init;
	pll_clk->dev = dev;
	pll_clk->pll_cfg = FUNC8(dev);

	if (!pll_clk->pll_cfg) {
		FUNC2(dev, "No OF match data provided\n");
		return -EINVAL;
	}

	ret = FUNC3(dev, &pll_clk->hw);
	if (ret) {
		FUNC2(dev, "failed to register %s clock\n", init.name);
		return ret;
	}

	return FUNC6(dev->of_node, of_clk_hw_simple_get,
			&pll_clk->hw);
}