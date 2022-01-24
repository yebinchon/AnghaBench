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
struct tps68470_pmic_opregion {int /*<<< orphan*/  lock; struct regmap* regmap; } ;
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TI_PMIC_CLKFREQ_OPREGION_ID ; 
 int /*<<< orphan*/  TI_PMIC_CLOCK_OPREGION_ID ; 
 int /*<<< orphan*/  TI_PMIC_POWER_OPREGION_ID ; 
 int /*<<< orphan*/  TI_PMIC_VR_VAL_OPREGION_ID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tps68470_pmic_opregion*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct tps68470_pmic_opregion* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tps68470_pmic_cfreq_handler ; 
 int /*<<< orphan*/  tps68470_pmic_clk_handler ; 
 int /*<<< orphan*/  tps68470_pmic_pwr_handler ; 
 int /*<<< orphan*/  tps68470_pmic_vrval_handler ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct regmap *tps68470_regmap = FUNC4(pdev->dev.parent);
	acpi_handle handle = FUNC1(pdev->dev.parent);
	struct device *dev = &pdev->dev;
	struct tps68470_pmic_opregion *opregion;
	acpi_status status;

	if (!dev || !tps68470_regmap) {
		FUNC5(dev, "dev or regmap is NULL\n");
		return -EINVAL;
	}

	if (!handle) {
		FUNC5(dev, "acpi handle is NULL\n");
		return -ENODEV;
	}

	opregion = FUNC6(dev, sizeof(*opregion), GFP_KERNEL);
	if (!opregion)
		return -ENOMEM;

	FUNC8(&opregion->lock);
	opregion->regmap = tps68470_regmap;

	status = FUNC2(handle,
						    TI_PMIC_POWER_OPREGION_ID,
						    tps68470_pmic_pwr_handler,
						    NULL, opregion);
	if (FUNC0(status))
		goto out_mutex_destroy;

	status = FUNC2(handle,
						    TI_PMIC_VR_VAL_OPREGION_ID,
						    tps68470_pmic_vrval_handler,
						    NULL, opregion);
	if (FUNC0(status))
		goto out_remove_power_handler;

	status = FUNC2(handle,
						    TI_PMIC_CLOCK_OPREGION_ID,
						    tps68470_pmic_clk_handler,
						    NULL, opregion);
	if (FUNC0(status))
		goto out_remove_vr_val_handler;

	status = FUNC2(handle,
						    TI_PMIC_CLKFREQ_OPREGION_ID,
						    tps68470_pmic_cfreq_handler,
						    NULL, opregion);
	if (FUNC0(status))
		goto out_remove_clk_handler;

	return 0;

out_remove_clk_handler:
	FUNC3(handle, TI_PMIC_CLOCK_OPREGION_ID,
					  tps68470_pmic_clk_handler);
out_remove_vr_val_handler:
	FUNC3(handle, TI_PMIC_VR_VAL_OPREGION_ID,
					  tps68470_pmic_vrval_handler);
out_remove_power_handler:
	FUNC3(handle, TI_PMIC_POWER_OPREGION_ID,
					  tps68470_pmic_pwr_handler);
out_mutex_destroy:
	FUNC7(&opregion->lock);
	return -ENODEV;
}