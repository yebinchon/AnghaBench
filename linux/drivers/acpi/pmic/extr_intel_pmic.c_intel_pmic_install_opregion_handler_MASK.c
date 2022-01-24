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
struct regmap {int dummy; } ;
struct intel_pmic_opregion_data {int dummy; } ;
struct intel_pmic_opregion {int /*<<< orphan*/  lpat_table; struct intel_pmic_opregion_data* data; struct regmap* regmap; int /*<<< orphan*/  lock; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PMIC_POWER_OPREGION_ID ; 
 int /*<<< orphan*/  PMIC_REGS_OPREGION_ID ; 
 int /*<<< orphan*/  PMIC_THERMAL_OPREGION_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct intel_pmic_opregion*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct intel_pmic_opregion* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct intel_pmic_opregion* intel_pmic_opregion ; 
 int /*<<< orphan*/  intel_pmic_power_handler ; 
 int /*<<< orphan*/  intel_pmic_regs_handler ; 
 int /*<<< orphan*/  intel_pmic_thermal_handler ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct device *dev, acpi_handle handle,
					struct regmap *regmap,
					struct intel_pmic_opregion_data *d)
{
	acpi_status status;
	struct intel_pmic_opregion *opregion;
	int ret;

	if (!dev || !regmap || !d)
		return -EINVAL;

	if (!handle)
		return -ENODEV;

	opregion = FUNC5(dev, sizeof(*opregion), GFP_KERNEL);
	if (!opregion)
		return -ENOMEM;

	FUNC6(&opregion->lock);
	opregion->regmap = regmap;
	opregion->lpat_table = FUNC3(handle);

	status = FUNC1(handle,
						    PMIC_POWER_OPREGION_ID,
						    intel_pmic_power_handler,
						    NULL, opregion);
	if (FUNC0(status)) {
		ret = -ENODEV;
		goto out_error;
	}

	status = FUNC1(handle,
						    PMIC_THERMAL_OPREGION_ID,
						    intel_pmic_thermal_handler,
						    NULL, opregion);
	if (FUNC0(status)) {
		ret = -ENODEV;
		goto out_remove_power_handler;
	}

	status = FUNC1(handle,
			PMIC_REGS_OPREGION_ID, intel_pmic_regs_handler, NULL,
			opregion);
	if (FUNC0(status)) {
		ret = -ENODEV;
		goto out_remove_thermal_handler;
	}

	opregion->data = d;
	intel_pmic_opregion = opregion;
	return 0;

out_remove_thermal_handler:
	FUNC4(handle, PMIC_THERMAL_OPREGION_ID,
					  intel_pmic_thermal_handler);

out_remove_power_handler:
	FUNC4(handle, PMIC_POWER_OPREGION_ID,
					  intel_pmic_power_handler);

out_error:
	FUNC2(opregion->lpat_table);
	return ret;
}