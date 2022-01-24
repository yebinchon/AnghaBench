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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  irq_handler_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IRQF_TRIGGER_FALLING ; 
 int IRQF_TRIGGER_RISING ; 
 int /*<<< orphan*/  MX31_PIN_GPIO3_1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mx31_3ds_sdhc1_gpios ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,void*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
			       irq_handler_t detect_irq,
			       void *data)
{
	int ret;

	ret = FUNC3(mx31_3ds_sdhc1_gpios,
				 FUNC0(mx31_3ds_sdhc1_gpios));
	if (ret) {
		FUNC5("Unable to request the SD/MMC GPIOs.\n");
		return ret;
	}

	ret = FUNC6(FUNC4(FUNC1(MX31_PIN_GPIO3_1)),
			  detect_irq,
			  IRQF_TRIGGER_FALLING | IRQF_TRIGGER_RISING,
			  "sdhc1-detect", data);
	if (ret) {
		FUNC5("Unable to request the SD/MMC card-detect IRQ.\n");
		goto gpio_free;
	}

	return 0;

gpio_free:
	FUNC2(mx31_3ds_sdhc1_gpios,
			FUNC0(mx31_3ds_sdhc1_gpios));
	return ret;
}