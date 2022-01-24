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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  nr_resets; int /*<<< orphan*/ * ops; } ;
struct meson_aoclk_reset_controller {TYPE_3__ reset; struct regmap* regmap; struct meson_aoclk_data* data; } ;
struct meson_aoclk_data {int num_clks; TYPE_2__* hw_data; TYPE_1__** clks; int /*<<< orphan*/  num_reset; } ;
struct TYPE_5__ {int num; int /*<<< orphan*/ * hws; } ;
struct TYPE_4__ {struct regmap* map; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 struct meson_aoclk_reset_controller* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,void*) ; 
 int FUNC6 (struct device*,TYPE_3__*) ; 
 int /*<<< orphan*/  meson_aoclk_reset_ops ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct regmap* FUNC9 (int /*<<< orphan*/ ) ; 

int FUNC10(struct platform_device *pdev)
{
	struct meson_aoclk_reset_controller *rstc;
	struct meson_aoclk_data *data;
	struct device *dev = &pdev->dev;
	struct regmap *regmap;
	int ret, clkid;

	data = (struct meson_aoclk_data *) FUNC7(dev);
	if (!data)
		return -ENODEV;

	rstc = FUNC4(dev, sizeof(*rstc), GFP_KERNEL);
	if (!rstc)
		return -ENOMEM;

	regmap = FUNC9(FUNC8(dev->of_node));
	if (FUNC0(regmap)) {
		FUNC2(dev, "failed to get regmap\n");
		return FUNC1(regmap);
	}

	/* Reset Controller */
	rstc->data = data;
	rstc->regmap = regmap;
	rstc->reset.ops = &meson_aoclk_reset_ops;
	rstc->reset.nr_resets = data->num_reset,
	rstc->reset.of_node = dev->of_node;
	ret = FUNC6(dev, &rstc->reset);
	if (ret) {
		FUNC2(dev, "failed to register reset controller\n");
		return ret;
	}

	/* Populate regmap */
	for (clkid = 0; clkid < data->num_clks; clkid++)
		data->clks[clkid]->map = regmap;

	/* Register all clks */
	for (clkid = 0; clkid < data->hw_data->num; clkid++) {
		if (!data->hw_data->hws[clkid])
			continue;

		ret = FUNC3(dev, data->hw_data->hws[clkid]);
		if (ret) {
			FUNC2(dev, "Clock registration failed\n");
			return ret;
		}
	}

	return FUNC5(dev, of_clk_hw_onecell_get,
		(void *) data->hw_data);
}