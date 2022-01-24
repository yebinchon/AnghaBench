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
 int /*<<< orphan*/  IRQF_TRIGGER_FALLING ; 
 int /*<<< orphan*/  MX31_PIN_SCK6 ; 
 int /*<<< orphan*/  SDHC1_GPIO_DET ; 
 int /*<<< orphan*/  SDHC1_GPIO_WP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, irq_handler_t detect_irq,
		void *data)
{
	int ret;

	ret = FUNC3(SDHC1_GPIO_DET, "sdhc-detect");
	if (ret)
		return ret;

	FUNC1(SDHC1_GPIO_DET);

#ifdef PCM970_SDHC_RW_SWITCH
	ret = gpio_request(SDHC1_GPIO_WP, "sdhc-wp");
	if (ret)
		goto err_gpio_free;
	gpio_direction_input(SDHC1_GPIO_WP);
#endif

	ret = FUNC5(FUNC4(FUNC0(MX31_PIN_SCK6)), detect_irq,
			IRQF_TRIGGER_FALLING, "sdhc-detect", data);
	if (ret)
		goto err_gpio_free_2;

	return 0;

err_gpio_free_2:
#ifdef PCM970_SDHC_RW_SWITCH
	gpio_free(SDHC1_GPIO_WP);
err_gpio_free:
#endif
	FUNC2(SDHC1_GPIO_DET);

	return ret;
}