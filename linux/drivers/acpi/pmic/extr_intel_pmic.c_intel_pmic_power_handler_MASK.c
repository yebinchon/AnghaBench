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
typedef  int u64 ;
typedef  int u32 ;
struct regmap {int dummy; } ;
struct intel_pmic_opregion_data {int (* get_power ) (struct regmap*,int,int,int*) ;int (* update_power ) (struct regmap*,int,int,int) ;int /*<<< orphan*/  power_table_count; int /*<<< orphan*/  power_table; } ;
struct intel_pmic_opregion {int /*<<< orphan*/  lock; struct intel_pmic_opregion_data* data; struct regmap* regmap; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int ACPI_READ ; 
 int ACPI_WRITE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC3 (struct regmap*,int,int,int*) ; 
 int FUNC4 (struct regmap*,int,int,int) ; 

__attribute__((used)) static acpi_status FUNC5(u32 function,
		acpi_physical_address address, u32 bits, u64 *value64,
		void *handler_context, void *region_context)
{
	struct intel_pmic_opregion *opregion = region_context;
	struct regmap *regmap = opregion->regmap;
	struct intel_pmic_opregion_data *d = opregion->data;
	int reg, bit, result;

	if (bits != 32 || !value64)
		return AE_BAD_PARAMETER;

	if (function == ACPI_WRITE && !(*value64 == 0 || *value64 == 1))
		return AE_BAD_PARAMETER;

	result = FUNC2(address, d->power_table,
				  d->power_table_count, &reg, &bit);
	if (result == -ENOENT)
		return AE_BAD_PARAMETER;

	FUNC0(&opregion->lock);

	result = function == ACPI_READ ?
		d->get_power(regmap, reg, bit, value64) :
		d->update_power(regmap, reg, bit, *value64 == 1);

	FUNC1(&opregion->lock);

	return result ? AE_ERROR : AE_OK;
}