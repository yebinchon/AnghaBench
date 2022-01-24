#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct clk_periph_driver_data {TYPE_1__* hw_data; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;
struct clk_periph_data {scalar_t__ name; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int num; struct clk_hw** hws; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct clk_periph_data const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct device*,struct clk_hw**) ; 
 int /*<<< orphan*/  FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hws ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  of_clk_hw_onecell_get ; 
 struct clk_periph_data* FUNC8 (struct device*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct clk_periph_driver_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct clk_periph_driver_data *driver_data;
	struct device_node *np = pdev->dev.of_node;
	const struct clk_periph_data *data;
	struct device *dev = &pdev->dev;
	int num_periph = 0, i, ret;
	struct resource *res;

	data = FUNC8(dev);
	if (!data)
		return -ENODEV;

	while (data[num_periph].name)
		num_periph++;

	driver_data = FUNC6(dev, sizeof(*driver_data), GFP_KERNEL);
	if (!driver_data)
		return -ENOMEM;

	driver_data->hw_data = FUNC6(dev,
					    FUNC12(driver_data->hw_data,
							hws, num_periph),
					    GFP_KERNEL);
	if (!driver_data->hw_data)
		return -ENOMEM;
	driver_data->hw_data->num = num_periph;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	driver_data->reg = FUNC5(dev, res);
	if (FUNC0(driver_data->reg))
		return FUNC1(driver_data->reg);

	FUNC11(&driver_data->lock);

	for (i = 0; i < num_periph; i++) {
		struct clk_hw **hw = &driver_data->hw_data->hws[i];
		if (FUNC2(&data[i], driver_data->reg,
						  &driver_data->lock, dev, hw))
			FUNC4(dev, "Can't register periph clock %s\n",
				data[i].name);
	}

	ret = FUNC7(np, of_clk_hw_onecell_get,
				     driver_data->hw_data);
	if (ret) {
		for (i = 0; i < num_periph; i++)
			FUNC3(driver_data->hw_data->hws[i]);
		return ret;
	}

	FUNC10(pdev, driver_data);
	return 0;
}