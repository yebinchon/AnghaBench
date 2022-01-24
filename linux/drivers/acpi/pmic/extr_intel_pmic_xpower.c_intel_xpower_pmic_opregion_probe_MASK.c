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
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct axp20x_dev {int /*<<< orphan*/  regmap; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ADR_SPACE_GPIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct axp20x_dev* FUNC4 (struct device*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  intel_xpower_pmic_gpio_handler ; 
 int /*<<< orphan*/  intel_xpower_pmic_opregion_data ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *parent = pdev->dev.parent;
	struct axp20x_dev *axp20x = FUNC4(parent);
	acpi_status status;
	int result;

	status = FUNC2(FUNC1(parent),
			ACPI_ADR_SPACE_GPIO, intel_xpower_pmic_gpio_handler,
			NULL, NULL);
	if (FUNC0(status))
		return -ENODEV;

	result = FUNC5(&pdev->dev,
					FUNC1(parent), axp20x->regmap,
					&intel_xpower_pmic_opregion_data);
	if (result)
		FUNC3(FUNC1(parent),
						  ACPI_ADR_SPACE_GPIO,
						  intel_xpower_pmic_gpio_handler);

	return result;
}