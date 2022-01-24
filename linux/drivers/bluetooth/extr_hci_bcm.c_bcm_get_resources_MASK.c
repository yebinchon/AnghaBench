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
struct gpio_desc {int dummy; } ;
struct dmi_system_id {int /*<<< orphan*/  ident; } ;
struct bcm_device {scalar_t__ irq; int /*<<< orphan*/  dev; TYPE_1__* supplies; int /*<<< orphan*/  set_shutdown; int /*<<< orphan*/  set_device_wakeup; struct gpio_desc* shutdown; struct gpio_desc* device_wakeup; struct gpio_desc* txco_clk; struct gpio_desc* lpo_clk; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {char* supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_NUM_SUPPLIES ; 
 int /*<<< orphan*/  EPROBE_DEFER ; 
 struct gpio_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC1 (struct gpio_desc*) ; 
 int FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_device*) ; 
 int /*<<< orphan*/  bcm_broken_irq_dmi_table ; 
 struct gpio_desc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm_gpio_set_device_wakeup ; 
 int /*<<< orphan*/  bcm_gpio_set_shutdown ; 
 scalar_t__ FUNC5 (struct gpio_desc*,struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct gpio_desc* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct gpio_desc*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct dmi_system_id* FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct gpio_desc*) ; 
 scalar_t__ x86_apple_machine ; 

__attribute__((used)) static int FUNC15(struct bcm_device *dev)
{
	const struct dmi_system_id *dmi_id;
	int err;

	dev->name = FUNC8(dev->dev);

	if (x86_apple_machine && !FUNC3(dev))
		return 0;

	dev->txco_clk = FUNC4(dev->dev);

	/* Handle deferred probing */
	if (dev->txco_clk == FUNC0(-EPROBE_DEFER))
		return FUNC2(dev->txco_clk);

	/* Ignore all other errors as before */
	if (FUNC1(dev->txco_clk))
		dev->txco_clk = NULL;

	dev->lpo_clk = FUNC9(dev->dev, "lpo");
	if (dev->lpo_clk == FUNC0(-EPROBE_DEFER))
		return FUNC2(dev->lpo_clk);

	if (FUNC1(dev->lpo_clk))
		dev->lpo_clk = NULL;

	/* Check if we accidentally fetched the lpo clock twice */
	if (dev->lpo_clk && FUNC5(dev->lpo_clk, dev->txco_clk)) {
		FUNC10(dev->dev, dev->txco_clk);
		dev->txco_clk = NULL;
	}

	dev->device_wakeup = FUNC11(dev->dev, "device-wakeup",
						     GPIOD_OUT_LOW);
	if (FUNC1(dev->device_wakeup))
		return FUNC2(dev->device_wakeup);

	dev->shutdown = FUNC11(dev->dev, "shutdown",
						GPIOD_OUT_LOW);
	if (FUNC1(dev->shutdown))
		return FUNC2(dev->shutdown);

	dev->set_device_wakeup = bcm_gpio_set_device_wakeup;
	dev->set_shutdown = bcm_gpio_set_shutdown;

	dev->supplies[0].supply = "vbat";
	dev->supplies[1].supply = "vddio";
	err = FUNC12(dev->dev, BCM_NUM_SUPPLIES,
				      dev->supplies);
	if (err)
		return err;

	/* IRQ can be declared in ACPI table as Interrupt or GpioInt */
	if (dev->irq <= 0) {
		struct gpio_desc *gpio;

		gpio = FUNC11(dev->dev, "host-wakeup",
					       GPIOD_IN);
		if (FUNC1(gpio))
			return FUNC2(gpio);

		dev->irq = FUNC14(gpio);
	}

	dmi_id = FUNC13(bcm_broken_irq_dmi_table);
	if (dmi_id) {
		FUNC7(dev->dev, "%s: Has a broken IRQ config, disabling IRQ support / runtime-pm\n",
			 dmi_id->ident);
		dev->irq = 0;
	}

	FUNC6(dev->dev, "BCM irq: %d\n", dev->irq);
	return 0;
}