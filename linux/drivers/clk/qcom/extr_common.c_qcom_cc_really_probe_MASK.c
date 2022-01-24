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
struct regmap {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr_resets; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; int /*<<< orphan*/  of_node; } ;
struct qcom_reset_controller {TYPE_2__ rcdev; int /*<<< orphan*/  reset_map; struct regmap* regmap; } ;
struct qcom_cc_desc {size_t num_clks; size_t num_clk_hws; scalar_t__ num_gdscs; scalar_t__ gdscs; int /*<<< orphan*/  resets; int /*<<< orphan*/  num_resets; struct clk_hw** clk_hws; struct clk_regmap** clks; } ;
struct qcom_cc {size_t num_rclks; struct clk_regmap** rclks; struct qcom_reset_controller reset; } ;
struct device {TYPE_1__* driver; int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct gdsc_desc {scalar_t__ num; scalar_t__ scs; struct device* dev; } ;
struct clk_regmap {int dummy; } ;
struct clk_hw {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*,int /*<<< orphan*/ ,struct gdsc_desc*) ; 
 int FUNC1 (struct device*,struct clk_hw*) ; 
 int FUNC2 (struct device*,struct clk_regmap*) ; 
 void* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,struct qcom_cc*) ; 
 int FUNC5 (struct device*,TYPE_2__*) ; 
 int FUNC6 (struct gdsc_desc*,TYPE_2__*,struct regmap*) ; 
 int /*<<< orphan*/  qcom_cc_clk_hw_get ; 
 int /*<<< orphan*/  FUNC7 (struct device*,struct qcom_cc*) ; 
 int /*<<< orphan*/  qcom_cc_gdsc_unregister ; 
 int /*<<< orphan*/  qcom_reset_ops ; 

int FUNC8(struct platform_device *pdev,
			 const struct qcom_cc_desc *desc, struct regmap *regmap)
{
	int i, ret;
	struct device *dev = &pdev->dev;
	struct qcom_reset_controller *reset;
	struct qcom_cc *cc;
	struct gdsc_desc *scd;
	size_t num_clks = desc->num_clks;
	struct clk_regmap **rclks = desc->clks;
	size_t num_clk_hws = desc->num_clk_hws;
	struct clk_hw **clk_hws = desc->clk_hws;

	cc = FUNC3(dev, sizeof(*cc), GFP_KERNEL);
	if (!cc)
		return -ENOMEM;

	reset = &cc->reset;
	reset->rcdev.of_node = dev->of_node;
	reset->rcdev.ops = &qcom_reset_ops;
	reset->rcdev.owner = dev->driver->owner;
	reset->rcdev.nr_resets = desc->num_resets;
	reset->regmap = regmap;
	reset->reset_map = desc->resets;

	ret = FUNC5(dev, &reset->rcdev);
	if (ret)
		return ret;

	if (desc->gdscs && desc->num_gdscs) {
		scd = FUNC3(dev, sizeof(*scd), GFP_KERNEL);
		if (!scd)
			return -ENOMEM;
		scd->dev = dev;
		scd->scs = desc->gdscs;
		scd->num = desc->num_gdscs;
		ret = FUNC6(scd, &reset->rcdev, regmap);
		if (ret)
			return ret;
		ret = FUNC0(dev, qcom_cc_gdsc_unregister,
					       scd);
		if (ret)
			return ret;
	}

	cc->rclks = rclks;
	cc->num_rclks = num_clks;

	FUNC7(dev, cc);

	for (i = 0; i < num_clk_hws; i++) {
		ret = FUNC1(dev, clk_hws[i]);
		if (ret)
			return ret;
	}

	for (i = 0; i < num_clks; i++) {
		if (!rclks[i])
			continue;

		ret = FUNC2(dev, rclks[i]);
		if (ret)
			return ret;
	}

	ret = FUNC4(dev, qcom_cc_clk_hw_get, cc);
	if (ret)
		return ret;

	return 0;
}