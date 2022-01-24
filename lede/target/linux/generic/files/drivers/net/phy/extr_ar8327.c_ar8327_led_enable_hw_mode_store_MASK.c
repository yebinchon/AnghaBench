#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct led_classdev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ar8327_led {int enable_hw_mode; int /*<<< orphan*/  lock; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  AR8327_LED_PATTERN_OFF ; 
 int /*<<< orphan*/  AR8327_LED_PATTERN_RULE ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ar8327_led*,int /*<<< orphan*/ ) ; 
 struct led_classdev* FUNC1 (struct device*) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 struct ar8327_led* FUNC3 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC6(struct device *dev,
				struct device_attribute *attr,
				const char *buf,
				size_t size)
{
        struct led_classdev *led_cdev = FUNC1(dev);
	struct ar8327_led *aled = FUNC3(led_cdev);
	u8 pattern;
	u8 value;
	int ret;

	ret = FUNC2(buf, 10, &value);
	if (ret < 0)
		return -EINVAL;

	FUNC4(&aled->lock);

	aled->enable_hw_mode = !!value;
	if (aled->enable_hw_mode)
		pattern = AR8327_LED_PATTERN_RULE;
	else
		pattern = AR8327_LED_PATTERN_OFF;

	FUNC0(aled, pattern);

	FUNC5(&aled->lock);

	return size;
}