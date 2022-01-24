#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct meson_eeclkc_data {int regmap_clk_num; TYPE_2__* hw_onecell_data; TYPE_1__** regmap_clks; scalar_t__ init_count; int /*<<< orphan*/  init_regs; } ;
struct TYPE_4__ {int num; int /*<<< orphan*/ * hws; } ;
struct TYPE_3__ {struct regmap* map; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 struct meson_eeclkc_data* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct regmap*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct regmap* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct platform_device *pdev)
{
	const struct meson_eeclkc_data *data;
	struct device *dev = &pdev->dev;
	struct regmap *map;
	int ret, i;

	data = FUNC5(dev);
	if (!data)
		return -EINVAL;

	/* Get the hhi system controller node */
	map = FUNC8(FUNC6(dev->of_node));
	if (FUNC0(map)) {
		FUNC2(dev,
			"failed to get HHI regmap\n");
		return FUNC1(map);
	}

	if (data->init_count)
		FUNC7(map, data->init_regs, data->init_count);

	/* Populate regmap for the regmap backed clocks */
	for (i = 0; i < data->regmap_clk_num; i++)
		data->regmap_clks[i]->map = map;

	for (i = 0; i < data->hw_onecell_data->num; i++) {
		/* array might be sparse */
		if (!data->hw_onecell_data->hws[i])
			continue;

		ret = FUNC3(dev, data->hw_onecell_data->hws[i]);
		if (ret) {
			FUNC2(dev, "Clock registration failed\n");
			return ret;
		}
	}

	return FUNC4(dev, of_clk_hw_onecell_get,
					   data->hw_onecell_data);
}