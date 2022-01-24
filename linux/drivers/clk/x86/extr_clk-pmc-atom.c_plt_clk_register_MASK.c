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
struct pmc_clk_data {scalar_t__ critical; scalar_t__ base; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct clk_init_data* init; } ;
struct clk_plt {int /*<<< orphan*/  lookup; TYPE_1__ hw; int /*<<< orphan*/  lock; scalar_t__ reg; } ;
struct clk_init_data {char const** parent_names; int num_parents; int /*<<< orphan*/  name; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_IS_CRITICAL ; 
 int ENOMEM ; 
 struct clk_plt* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PLT_CLK_NAME_BASE ; 
 scalar_t__ PMC_CLK_CTL_OFFSET ; 
 int PMC_CLK_CTL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct clk_plt* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  plt_clk_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct clk_plt *FUNC8(struct platform_device *pdev, int id,
					const struct pmc_clk_data *pmc_data,
					const char **parent_names,
					int num_parents)
{
	struct clk_plt *pclk;
	struct clk_init_data init;
	int ret;

	pclk = FUNC3(&pdev->dev, sizeof(*pclk), GFP_KERNEL);
	if (!pclk)
		return FUNC0(-ENOMEM);

	init.name =  FUNC4(GFP_KERNEL, "%s_%d", PLT_CLK_NAME_BASE, id);
	init.ops = &plt_clk_ops;
	init.flags = 0;
	init.parent_names = parent_names;
	init.num_parents = num_parents;

	pclk->hw.init = &init;
	pclk->reg = pmc_data->base + PMC_CLK_CTL_OFFSET + id * PMC_CLK_CTL_SIZE;
	FUNC7(&pclk->lock);

	/*
	 * On some systems, the pmc_plt_clocks already enabled by the
	 * firmware are being marked as critical to avoid them being
	 * gated by the clock framework.
	 */
	if (pmc_data->critical && FUNC6(&pclk->hw))
		init.flags |= CLK_IS_CRITICAL;

	ret = FUNC2(&pdev->dev, &pclk->hw);
	if (ret) {
		pclk = FUNC0(ret);
		goto err_free_init;
	}

	pclk->lookup = FUNC1(&pclk->hw, init.name, NULL);
	if (!pclk->lookup) {
		pclk = FUNC0(-ENOMEM);
		goto err_free_init;
	}

err_free_init:
	FUNC5(init.name);
	return pclk;
}