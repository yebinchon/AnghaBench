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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  ac_timer; int /*<<< orphan*/  chrg_full_timer; TYPE_1__* machinfo; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* exit ) () ;scalar_t__ gpio_acin; scalar_t__ gpio_batfull; scalar_t__ gpio_batlock; scalar_t__ batfull_irq; scalar_t__ gpio_fatal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_attr_battery_percentage ; 
 int /*<<< orphan*/  dev_attr_battery_voltage ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sharpsl_ac_isr ; 
 int /*<<< orphan*/  sharpsl_charge_led_trigger ; 
 int /*<<< orphan*/  sharpsl_chrg_full_isr ; 
 int /*<<< orphan*/  sharpsl_fatal_isr ; 
 TYPE_2__ sharpsl_pm ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	FUNC7(NULL);

	FUNC1(&pdev->dev, &dev_attr_battery_percentage);
	FUNC1(&pdev->dev, &dev_attr_battery_voltage);

	FUNC5(sharpsl_charge_led_trigger);

	FUNC2(FUNC4(sharpsl_pm.machinfo->gpio_acin), sharpsl_ac_isr);
	FUNC2(FUNC4(sharpsl_pm.machinfo->gpio_batlock), sharpsl_fatal_isr);

	if (sharpsl_pm.machinfo->gpio_fatal)
		FUNC2(FUNC4(sharpsl_pm.machinfo->gpio_fatal), sharpsl_fatal_isr);

	if (sharpsl_pm.machinfo->batfull_irq)
		FUNC2(FUNC4(sharpsl_pm.machinfo->gpio_batfull), sharpsl_chrg_full_isr);

	FUNC3(sharpsl_pm.machinfo->gpio_batlock);
	FUNC3(sharpsl_pm.machinfo->gpio_batfull);
	FUNC3(sharpsl_pm.machinfo->gpio_acin);

	if (sharpsl_pm.machinfo->exit)
		sharpsl_pm.machinfo->exit();

	FUNC0(&sharpsl_pm.chrg_full_timer);
	FUNC0(&sharpsl_pm.ac_timer);

	return 0;
}