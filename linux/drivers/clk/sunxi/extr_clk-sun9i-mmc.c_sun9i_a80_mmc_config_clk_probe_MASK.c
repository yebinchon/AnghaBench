#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int nr_resets; struct device_node* of_node; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct clk_onecell_data {int clk_num; scalar_t__* clks; } ;
struct sun9i_mmc_clk_data {scalar_t__ reset; TYPE_1__ rcdev; int /*<<< orphan*/  lock; scalar_t__ membase; scalar_t__ clk; struct clk_onecell_data clk_data; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {char* name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  SUN9I_MMC_GATE_BIT ; 
 int SUN9I_MMC_WIDTH ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,char const*,char const*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_2__*,struct resource*) ; 
 scalar_t__* FUNC9 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct sun9i_mmc_clk_data* FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct device_node*,int /*<<< orphan*/ ,struct clk_onecell_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  of_clk_src_onecell_get ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*,int,char const**) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct sun9i_mmc_clk_data*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (scalar_t__) ; 
 int FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sun9i_mmc_reset_ops ; 

__attribute__((used)) static int FUNC22(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct sun9i_mmc_clk_data *data;
	struct clk_onecell_data *clk_data;
	const char *clk_name = np->name;
	const char *clk_parent;
	struct resource *r;
	int count, i, ret;

	data = FUNC10(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC21(&data->lock);

	r = FUNC15(pdev, IORESOURCE_MEM, 0);
	/* one clock/reset pair per word */
	count = FUNC0((FUNC20(r)), SUN9I_MMC_WIDTH);
	data->membase = FUNC8(&pdev->dev, r);
	if (FUNC1(data->membase))
		return FUNC2(data->membase);

	clk_data = &data->clk_data;
	clk_data->clk_num = count;
	clk_data->clks = FUNC9(&pdev->dev, count, sizeof(struct clk *),
				      GFP_KERNEL);
	if (!clk_data->clks)
		return -ENOMEM;

	data->clk = FUNC7(&pdev->dev, NULL);
	if (FUNC1(data->clk)) {
		FUNC6(&pdev->dev, "Could not get clock\n");
		return FUNC2(data->clk);
	}

	data->reset = FUNC11(&pdev->dev, NULL);
	if (FUNC1(data->reset)) {
		FUNC6(&pdev->dev, "Could not get reset control\n");
		return FUNC2(data->reset);
	}

	ret = FUNC18(data->reset);
	if (ret) {
		FUNC6(&pdev->dev, "Reset deassert err %d\n", ret);
		return ret;
	}

	clk_parent = FUNC3(data->clk);
	for (i = 0; i < count; i++) {
		FUNC14(np, "clock-output-names",
					      i, &clk_name);

		clk_data->clks[i] = FUNC4(&pdev->dev, clk_name,
						      clk_parent, 0,
						      data->membase + SUN9I_MMC_WIDTH * i,
						      SUN9I_MMC_GATE_BIT, 0,
						      &data->lock);

		if (FUNC1(clk_data->clks[i])) {
			ret = FUNC2(clk_data->clks[i]);
			goto err_clk_register;
		}
	}

	ret = FUNC12(np, of_clk_src_onecell_get, clk_data);
	if (ret)
		goto err_clk_provider;

	data->rcdev.owner = THIS_MODULE;
	data->rcdev.nr_resets = count;
	data->rcdev.ops = &sun9i_mmc_reset_ops;
	data->rcdev.of_node = pdev->dev.of_node;

	ret = FUNC19(&data->rcdev);
	if (ret)
		goto err_rc_reg;

	FUNC16(pdev, data);

	return 0;

err_rc_reg:
	FUNC13(np);

err_clk_provider:
	for (i = 0; i < count; i++)
		FUNC5(clk_data->clks[i]);

err_clk_register:
	FUNC17(data->reset);

	return ret;
}