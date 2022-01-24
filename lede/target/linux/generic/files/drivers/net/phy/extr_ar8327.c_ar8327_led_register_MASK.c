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
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;
struct ar8327_led {scalar_t__ mode; TYPE_1__ cdev; } ;

/* Variables and functions */
 scalar_t__ AR8327_LED_MODE_HW ; 
 int /*<<< orphan*/  dev_attr_enable_hw_mode ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC3(struct ar8327_led *aled)
{
	int ret;

	ret = FUNC1(NULL, &aled->cdev);
	if (ret < 0)
		return ret;

	if (aled->mode == AR8327_LED_MODE_HW) {
		ret = FUNC0(aled->cdev.dev,
					 &dev_attr_enable_hw_mode);
		if (ret)
			goto err_unregister;
	}

	return 0;

err_unregister:
	FUNC2(&aled->cdev);
	return ret;
}