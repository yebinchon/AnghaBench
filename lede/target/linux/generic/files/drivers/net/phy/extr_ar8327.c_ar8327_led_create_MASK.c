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
struct ar8xxx_priv {struct ar8327_data* chip_data; } ;
struct ar8327_led_info {scalar_t__ led_num; scalar_t__ mode; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  name; int /*<<< orphan*/  active_low; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  default_trigger; int /*<<< orphan*/  blink_set; int /*<<< orphan*/  brightness_set; } ;
struct ar8327_led {scalar_t__ led_num; scalar_t__ mode; int enable_hw_mode; char* name; int /*<<< orphan*/  led_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; TYPE_1__ cdev; int /*<<< orphan*/  active_low; struct ar8xxx_priv* sw_priv; } ;
struct ar8327_data {int /*<<< orphan*/  num_leds; struct ar8327_led** leds; } ;

/* Variables and functions */
 scalar_t__ AR8327_LED_MODE_HW ; 
 scalar_t__ AR8327_NUM_LEDS ; 
 int /*<<< orphan*/  CONFIG_AR8216_PHY_LEDS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ar8327_led_blink_set ; 
 int FUNC2 (struct ar8327_led*) ; 
 int /*<<< orphan*/  ar8327_led_set_brightness ; 
 int /*<<< orphan*/  ar8327_led_work_func ; 
 int /*<<< orphan*/  FUNC3 (struct ar8327_led*) ; 
 struct ar8327_led* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct ar8xxx_priv *priv,
		  const struct ar8327_led_info *led_info)
{
	struct ar8327_data *data = priv->chip_data;
	struct ar8327_led *aled;
	int ret;

	if (!FUNC1(CONFIG_AR8216_PHY_LEDS))
		return 0;

	if (!led_info->name)
		return -EINVAL;

	if (led_info->led_num >= AR8327_NUM_LEDS)
		return -EINVAL;

	aled = FUNC4(sizeof(*aled) + FUNC8(led_info->name) + 1,
		       GFP_KERNEL);
	if (!aled)
		return -ENOMEM;

	aled->sw_priv = priv;
	aled->led_num = led_info->led_num;
	aled->active_low = led_info->active_low;
	aled->mode = led_info->mode;

	if (aled->mode == AR8327_LED_MODE_HW)
		aled->enable_hw_mode = true;

	aled->name = (char *)(aled + 1);
	FUNC7(aled->name, led_info->name);

	aled->cdev.name = aled->name;
	aled->cdev.brightness_set = ar8327_led_set_brightness;
	aled->cdev.blink_set = ar8327_led_blink_set;
	aled->cdev.default_trigger = led_info->default_trigger;

	FUNC6(&aled->lock);
	FUNC5(&aled->mutex);
	FUNC0(&aled->led_work, ar8327_led_work_func);

	ret = FUNC2(aled);
	if (ret)
		goto err_free;

	data->leds[data->num_leds++] = aled;

	return 0;

err_free:
	FUNC3(aled);
	return ret;
}