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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct intel_pmic_opregion_data {int /*<<< orphan*/  thermal_table_count; int /*<<< orphan*/  thermal_table; } ;
struct intel_pmic_opregion {int /*<<< orphan*/  lock; struct intel_pmic_opregion_data* data; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (struct intel_pmic_opregion*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct intel_pmic_opregion*,int,int,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct intel_pmic_opregion*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static acpi_status FUNC9(u32 function,
		acpi_physical_address address, u32 bits, u64 *value64,
		void *handler_context, void *region_context)
{
	struct intel_pmic_opregion *opregion = region_context;
	struct intel_pmic_opregion_data *d = opregion->data;
	int reg, bit, result;

	if (bits != 32 || !value64)
		return AE_BAD_PARAMETER;

	result = FUNC2(address, d->thermal_table,
				  d->thermal_table_count, &reg, &bit);
	if (result == -ENOENT)
		return AE_BAD_PARAMETER;

	FUNC0(&opregion->lock);

	if (FUNC6(address))
		result = FUNC8(opregion, reg, function, value64);
	else if (FUNC4(address))
		result = FUNC3(opregion, reg, function, value64);
	else if (FUNC5(address))
		result = FUNC7(opregion, reg, bit,
						function, value64);
	else
		result = -EINVAL;

	FUNC1(&opregion->lock);

	if (result < 0) {
		if (result == -EINVAL)
			return AE_BAD_PARAMETER;
		else
			return AE_ERROR;
	}

	return AE_OK;
}