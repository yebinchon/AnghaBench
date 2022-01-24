#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int /*<<< orphan*/ * init; } ;
struct TYPE_6__ {TYPE_1__ hw; } ;
struct TYPE_8__ {TYPE_3__* s; TYPE_2__ clkr; int /*<<< orphan*/  freq_tbl; } ;
struct TYPE_7__ {void* parent_map; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  clk_tbl_gfx3d_8064 ; 
 int /*<<< orphan*/  gfx3d_8064_init ; 
 TYPE_4__ gfx3d_src ; 
 int /*<<< orphan*/  mmcc_msm8960_match_table ; 
 void* mmcc_pxo_pll8_pll2_pll15_map ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  pll15 ; 
 int /*<<< orphan*/  pll15_config ; 
 struct regmap* FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct platform_device*,int /*<<< orphan*/ ,struct regmap*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct regmap *regmap;
	bool is_8064;
	struct device *dev = &pdev->dev;

	match = FUNC4(mmcc_msm8960_match_table, dev);
	if (!match)
		return -EINVAL;

	is_8064 = FUNC3(dev->of_node, "qcom,mmcc-apq8064");
	if (is_8064) {
		gfx3d_src.freq_tbl = clk_tbl_gfx3d_8064;
		gfx3d_src.clkr.hw.init = &gfx3d_8064_init;
		gfx3d_src.s[0].parent_map = mmcc_pxo_pll8_pll2_pll15_map;
		gfx3d_src.s[1].parent_map = mmcc_pxo_pll8_pll2_pll15_map;
	}

	regmap = FUNC5(pdev, match->data);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	FUNC2(&pll15, regmap, &pll15_config, false);

	return FUNC6(pdev, match->data, regmap);
}