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
struct TYPE_2__ {struct led_nu801_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct led_nu801_platform_data {int num_controllers; int /*<<< orphan*/ * template; } ;
struct led_nu801_data {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct led_nu801_data*) ; 
 struct led_nu801_data* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct led_nu801_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct led_nu801_data*) ; 
 struct led_nu801_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct led_nu801_data*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct led_nu801_platform_data *pdata = pdev->dev.platform_data;
	struct led_nu801_data *controllers;
	int i, ret = 0;

	if (!(pdata && pdata->num_controllers)) {
		controllers = FUNC4(pdev);
		if (!controllers)
			return -ENODEV;
	}

	controllers = FUNC1(sizeof(struct led_nu801_data) *
			      pdata->num_controllers, GFP_KERNEL);
	if (!controllers)
		return -ENOMEM;

	for (i = 0; i < pdata->num_controllers; i++) {
		ret = FUNC2(&pdata->template[i],
					      &controllers[i],
					      &pdev->dev);
		if (ret < 0)
			goto err;
	}

	FUNC5(pdev, controllers);

	return 0;

err:
	for (i = i - 1; i >= 0; i--)
		FUNC3(&controllers[i]);

	FUNC0(controllers);

	return ret;
}