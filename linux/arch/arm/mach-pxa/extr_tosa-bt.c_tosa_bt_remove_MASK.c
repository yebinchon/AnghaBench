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
struct tosa_bt_data {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  gpio_pwr; } ;
struct rfkill {int dummy; } ;
struct TYPE_2__ {struct tosa_bt_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct rfkill* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC4 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC5 (struct tosa_bt_data*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *dev)
{
	struct tosa_bt_data *data = dev->dev.platform_data;
	struct rfkill *rfk = FUNC1(dev);

	FUNC2(dev, NULL);

	if (rfk) {
		FUNC4(rfk);
		FUNC3(rfk);
	}
	rfk = NULL;

	FUNC5(data);

	FUNC0(data->gpio_pwr);
	FUNC0(data->gpio_reset);

	return 0;
}