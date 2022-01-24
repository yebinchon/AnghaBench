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
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct lochnagar_config {int /*<<< orphan*/  nparents; int /*<<< orphan*/  parents; int /*<<< orphan*/  clks; } ;
struct lochnagar_clk_priv {struct lochnagar_clk* lclks; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct lochnagar_clk {scalar_t__ name; TYPE_1__ hw; struct lochnagar_clk_priv* priv; } ;
struct clk_init_data {scalar_t__ name; int /*<<< orphan*/  num_parents; int /*<<< orphan*/  parent_data; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int FUNC0 (struct lochnagar_clk*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device*,TYPE_1__*) ; 
 struct lochnagar_clk_priv* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct lochnagar_clk_priv*) ; 
 int /*<<< orphan*/  lochnagar_clk_ops ; 
 int /*<<< orphan*/  lochnagar_of_clk_hw_get ; 
 int /*<<< orphan*/  lochnagar_of_match ; 
 int /*<<< orphan*/  FUNC6 (struct lochnagar_clk*,int /*<<< orphan*/ ,int) ; 
 struct of_device_id* FUNC7 (int /*<<< orphan*/ ,struct device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct clk_init_data clk_init = {
		.ops = &lochnagar_clk_ops,
	};
	struct device *dev = &pdev->dev;
	struct lochnagar_clk_priv *priv;
	const struct of_device_id *of_id;
	struct lochnagar_clk *lclk;
	struct lochnagar_config *conf;
	int ret, i;

	of_id = FUNC7(lochnagar_of_match, dev);
	if (!of_id)
		return -EINVAL;

	priv = FUNC4(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->dev = dev;
	priv->regmap = FUNC2(dev->parent, NULL);
	conf = (struct lochnagar_config *)of_id->data;

	FUNC6(priv->lclks, conf->clks, sizeof(priv->lclks));

	clk_init.parent_data = conf->parents;
	clk_init.num_parents = conf->nparents;

	for (i = 0; i < FUNC0(priv->lclks); i++) {
		lclk = &priv->lclks[i];

		if (!lclk->name)
			continue;

		clk_init.name = lclk->name;

		lclk->priv = priv;
		lclk->hw.init = &clk_init;

		ret = FUNC3(dev, &lclk->hw);
		if (ret) {
			FUNC1(dev, "Failed to register %s: %d\n",
				lclk->name, ret);
			return ret;
		}
	}

	ret = FUNC5(dev, lochnagar_of_clk_hw_get, priv);
	if (ret < 0)
		FUNC1(dev, "Failed to register provider: %d\n", ret);

	return ret;
}