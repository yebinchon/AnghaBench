#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct oxnas_stdclk_data {int ngates; TYPE_3__* onecell_data; TYPE_1__** gates; } ;
struct of_device_id {struct oxnas_stdclk_data* data; } ;
struct device_node {int dummy; } ;
struct TYPE_8__ {int num; int /*<<< orphan*/ * hws; } ;
struct TYPE_6__ {struct regmap* regmap; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device_node*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct of_device_id* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  oxnas_stdclk_dt_ids ; 
 struct regmap* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	const struct oxnas_stdclk_data *data;
	const struct of_device_id *id;
	struct regmap *regmap;
	int ret;
	int i;

	id = FUNC6(oxnas_stdclk_dt_ids, &pdev->dev);
	if (!id)
		return -ENODEV;
	data = id->data;

	regmap = FUNC7(FUNC5(np));
	if (FUNC0(regmap)) {
		FUNC2(&pdev->dev, "failed to have parent regmap\n");
		return FUNC1(regmap);
	}

	for (i = 0 ; i < data->ngates ; ++i)
		data->gates[i]->regmap = regmap;

	for (i = 0; i < data->onecell_data->num; i++) {
		if (!data->onecell_data->hws[i])
			continue;

		ret = FUNC3(&pdev->dev,
					   data->onecell_data->hws[i]);
		if (ret)
			return ret;
	}

	return FUNC4(np, of_clk_hw_onecell_get,
				      data->onecell_data);
}