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
 int /*<<< orphan*/  MMC_PAD_CFG ; 
 int /*<<< orphan*/  MX31_PIN_GPIO1_1 ; 
 int /*<<< orphan*/  MX31_PIN_LCS0 ; 
 int /*<<< orphan*/  MX31_PIN_SD1_CLK ; 
 int /*<<< orphan*/  MX31_PIN_SD1_CMD ; 
 int /*<<< orphan*/  MX31_PIN_SD1_DATA0 ; 
 int /*<<< orphan*/  MX31_PIN_SD1_DATA1 ; 
 int /*<<< orphan*/  MX31_PIN_SD1_DATA2 ; 
 int /*<<< orphan*/  MX31_PIN_SD1_DATA3 ; 
 int /*<<< orphan*/  gpio_det ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpio_wp ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,void*) ; 

__attribute__((used)) static int FUNC7(struct device *dev,
			 irq_handler_t detect_irq, void *data)
{
	int ret;

	gpio_det = FUNC0(MX31_PIN_GPIO1_1);
	gpio_wp = FUNC0(MX31_PIN_LCS0);

	FUNC5(MX31_PIN_SD1_DATA0, MMC_PAD_CFG);
	FUNC5(MX31_PIN_SD1_DATA1, MMC_PAD_CFG);
	FUNC5(MX31_PIN_SD1_DATA2, MMC_PAD_CFG);
	FUNC5(MX31_PIN_SD1_DATA3, MMC_PAD_CFG);
	FUNC5(MX31_PIN_SD1_CLK, MMC_PAD_CFG);
	FUNC5(MX31_PIN_SD1_CMD, MMC_PAD_CFG);

	ret = FUNC3(gpio_det, "MMC detect");
	if (ret)
		return ret;

	ret = FUNC3(gpio_wp, "MMC w/p");
	if (ret)
		goto exit_free_det;

	FUNC1(gpio_det);
	FUNC1(gpio_wp);

	ret = FUNC6(FUNC4(FUNC0(MX31_PIN_GPIO1_1)),
			  detect_irq, IRQF_TRIGGER_FALLING,
			  "MMC detect", data);
	if (ret)
		goto exit_free_wp;

	return 0;

exit_free_wp:
	FUNC2(gpio_wp);

exit_free_det:
	FUNC2(gpio_det);

	return ret;
}