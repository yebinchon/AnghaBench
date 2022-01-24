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
struct tps68470_pmic_table {int dummy; } ;
struct tps68470_pmic_opregion {struct regmap* regmap; int /*<<< orphan*/  lock; } ;
typedef  struct regmap regmap ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_physical_address ;

/* Variables and functions */
 int ACPI_READ ; 
 int ACPI_WRITE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct tps68470_pmic_table const*,unsigned int,int*,int*) ; 

__attribute__((used)) static acpi_status FUNC3(u32 function,
					  acpi_physical_address address,
					  u32 bits, u64 *value,
					  void *region_context,
					  int (*get)(struct regmap *,
						     int, int, u64 *),
					  int (*update)(struct regmap *,
							int, int, u64),
					  const struct tps68470_pmic_table *tbl,
					  unsigned int tbl_size)
{
	struct tps68470_pmic_opregion *opregion = region_context;
	struct regmap *regmap = opregion->regmap;
	int reg, ret, bitmask;

	if (bits != 32)
		return AE_BAD_PARAMETER;

	ret = FUNC2(address, tbl, tbl_size, &reg, &bitmask);
	if (ret < 0)
		return AE_BAD_PARAMETER;

	if (function == ACPI_WRITE && *value > bitmask)
		return AE_BAD_PARAMETER;

	FUNC0(&opregion->lock);

	ret = (function == ACPI_READ) ?
		get(regmap, reg, bitmask, value) :
		update(regmap, reg, bitmask, *value);

	FUNC1(&opregion->lock);

	return ret ? AE_ERROR : AE_OK;
}