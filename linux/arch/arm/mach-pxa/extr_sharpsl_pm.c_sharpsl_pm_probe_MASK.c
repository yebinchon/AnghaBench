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
struct TYPE_8__ {TYPE_1__* platform_data; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  ac_timer; TYPE_3__* dev; TYPE_1__* machinfo; int /*<<< orphan*/  chrg_full_timer; scalar_t__ flags; int /*<<< orphan*/  charge_mode; } ;
struct TYPE_6__ {scalar_t__ gpio_batfull; scalar_t__ batfull_irq; scalar_t__ gpio_fatal; scalar_t__ gpio_batlock; scalar_t__ gpio_acin; int /*<<< orphan*/  (* init ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CHRG_OFF ; 
 int EINVAL ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  apm_get_power_status ; 
 int /*<<< orphan*/  dev_attr_battery_percentage ; 
 int /*<<< orphan*/  dev_attr_battery_voltage ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sharpsl_ac_isr ; 
 int /*<<< orphan*/  sharpsl_ac_timer ; 
 int /*<<< orphan*/  sharpsl_apm_get_power_status ; 
 int /*<<< orphan*/  sharpsl_charge_led_trigger ; 
 int /*<<< orphan*/  sharpsl_chrg_full_isr ; 
 int /*<<< orphan*/  sharpsl_chrg_full_timer ; 
 int /*<<< orphan*/  sharpsl_fatal_isr ; 
 TYPE_2__ sharpsl_pm ; 
 int /*<<< orphan*/  sharpsl_pm_ops ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	int ret, irq;

	if (!pdev->dev.platform_data)
		return -EINVAL;

	sharpsl_pm.dev = &pdev->dev;
	sharpsl_pm.machinfo = pdev->dev.platform_data;
	sharpsl_pm.charge_mode = CHRG_OFF;
	sharpsl_pm.flags = 0;

	FUNC12(&sharpsl_pm.ac_timer, sharpsl_ac_timer, 0);

	FUNC12(&sharpsl_pm.chrg_full_timer, sharpsl_chrg_full_timer, 0);

	FUNC6("sharpsl-charge", &sharpsl_charge_led_trigger);

	sharpsl_pm.machinfo->init();

	FUNC4(sharpsl_pm.machinfo->gpio_acin, "AC IN");
	FUNC3(sharpsl_pm.machinfo->gpio_acin);
	FUNC4(sharpsl_pm.machinfo->gpio_batfull, "Battery Full");
	FUNC3(sharpsl_pm.machinfo->gpio_batfull);
	FUNC4(sharpsl_pm.machinfo->gpio_batlock, "Battery Lock");
	FUNC3(sharpsl_pm.machinfo->gpio_batlock);

	/* Register interrupt handlers */
	irq = FUNC5(sharpsl_pm.machinfo->gpio_acin);
	if (FUNC9(irq, sharpsl_ac_isr, IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING, "AC Input Detect", sharpsl_ac_isr)) {
		FUNC0(sharpsl_pm.dev, "Could not get irq %d.\n", irq);
	}

	irq = FUNC5(sharpsl_pm.machinfo->gpio_batlock);
	if (FUNC9(irq, sharpsl_fatal_isr, IRQF_TRIGGER_FALLING, "Battery Cover", sharpsl_fatal_isr)) {
		FUNC0(sharpsl_pm.dev, "Could not get irq %d.\n", irq);
	}

	if (sharpsl_pm.machinfo->gpio_fatal) {
		irq = FUNC5(sharpsl_pm.machinfo->gpio_fatal);
		if (FUNC9(irq, sharpsl_fatal_isr, IRQF_TRIGGER_FALLING, "Fatal Battery", sharpsl_fatal_isr)) {
			FUNC0(sharpsl_pm.dev, "Could not get irq %d.\n", irq);
		}
	}

	if (sharpsl_pm.machinfo->batfull_irq) {
		/* Register interrupt handler. */
		irq = FUNC5(sharpsl_pm.machinfo->gpio_batfull);
		if (FUNC9(irq, sharpsl_chrg_full_isr, IRQF_TRIGGER_RISING, "CO", sharpsl_chrg_full_isr)) {
			FUNC0(sharpsl_pm.dev, "Could not get irq %d.\n", irq);
		}
	}

	ret = FUNC2(&pdev->dev, &dev_attr_battery_percentage);
	ret |= FUNC2(&pdev->dev, &dev_attr_battery_voltage);
	if (ret != 0)
		FUNC1(&pdev->dev, "Failed to register attributes (%d)\n", ret);

	apm_get_power_status = sharpsl_apm_get_power_status;

#ifdef CONFIG_PM
	suspend_set_ops(&sharpsl_pm_ops);
#endif

	FUNC7(&sharpsl_pm.ac_timer, jiffies + FUNC8(250));

	return 0;
}