#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {TYPE_1__* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_7__ {struct clk_init_data* init; } ;
struct hsdk_pll_clk {TYPE_4__ hw; int /*<<< orphan*/  pll_devdata; struct device* dev; int /*<<< orphan*/  regs; } ;
struct clk_init_data {unsigned int name; char const** parent_names; unsigned int num_parents; int /*<<< orphan*/ * ops; } ;
struct TYPE_6__ {unsigned int name; } ;

/* Variables and functions */
 unsigned int CGU_PLL_SOURCE_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct device*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct resource*) ; 
 struct hsdk_pll_clk* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hsdk_pll_ops ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 unsigned int FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  of_clk_hw_simple_get ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	int ret;
	struct resource *mem;
	const char *parent_name;
	unsigned int num_parents;
	struct hsdk_pll_clk *pll_clk;
	struct clk_init_data init = { };
	struct device *dev = &pdev->dev;

	pll_clk = FUNC5(dev, sizeof(*pll_clk), GFP_KERNEL);
	if (!pll_clk)
		return -ENOMEM;

	mem = FUNC10(pdev, IORESOURCE_MEM, 0);
	pll_clk->regs = FUNC4(dev, mem);
	if (FUNC0(pll_clk->regs))
		return FUNC1(pll_clk->regs);

	init.name = dev->of_node->name;
	init.ops = &hsdk_pll_ops;
	parent_name = FUNC8(dev->of_node, 0);
	init.parent_names = &parent_name;
	num_parents = FUNC7(dev->of_node);
	if (num_parents == 0 || num_parents > CGU_PLL_SOURCE_MAX) {
		FUNC2(dev, "wrong clock parents number: %u\n", num_parents);
		return -EINVAL;
	}
	init.num_parents = num_parents;

	pll_clk->hw.init = &init;
	pll_clk->dev = dev;
	pll_clk->pll_devdata = FUNC9(dev);

	if (!pll_clk->pll_devdata) {
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