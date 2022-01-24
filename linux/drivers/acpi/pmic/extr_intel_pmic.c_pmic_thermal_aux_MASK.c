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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct intel_pmic_opregion {int /*<<< orphan*/  regmap; TYPE_1__* data; scalar_t__ lpat_table; } ;
struct TYPE_2__ {int (* update_aux ) (int /*<<< orphan*/ ,int,int) ;} ;

/* Variables and functions */
 scalar_t__ ACPI_READ ; 
 int ENXIO ; 
 int FUNC0 (scalar_t__,int) ; 
 int FUNC1 (struct intel_pmic_opregion*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct intel_pmic_opregion *opregion, int reg,
			    u32 function, u64 *value)
{
	int raw_temp;

	if (function == ACPI_READ)
		return FUNC1(opregion, reg, value);

	if (!opregion->data->update_aux)
		return -ENXIO;

	if (opregion->lpat_table) {
		raw_temp = FUNC0(opregion->lpat_table, *value);
		if (raw_temp < 0)
			return raw_temp;
	} else {
		raw_temp = *value;
	}

	return opregion->data->update_aux(opregion->regmap, reg, raw_temp);
}