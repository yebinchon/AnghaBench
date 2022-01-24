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
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_cpu_flags ;
struct TYPE_2__ {int /*<<< orphan*/  address; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITMASK_ALL_FIXED_STATUS ; 
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REGISTER_PM1_STATUS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_gbl_hardware_lock ; 
 TYPE_1__ acpi_gbl_xpm1a_status ; 
 int /*<<< orphan*/  acpi_hw_clear_gpe_block ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_clear_acpi_status ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status FUNC9(void)
{
	acpi_status status;
	acpi_cpu_flags lock_flags = 0;

	FUNC3(hw_clear_acpi_status);

	FUNC0((ACPI_DB_IO, "About to write %04X to %8.8X%8.8X\n",
			  ACPI_BITMASK_ALL_FIXED_STATUS,
			  FUNC2(acpi_gbl_xpm1a_status.address)));

	lock_flags = FUNC6(acpi_gbl_hardware_lock);

	/* Clear the fixed events in PM1 A/B */

	status = FUNC5(ACPI_REGISTER_PM1_STATUS,
					ACPI_BITMASK_ALL_FIXED_STATUS);

	FUNC7(acpi_gbl_hardware_lock, lock_flags);

	if (FUNC1(status)) {
		goto exit;
	}

	/* Clear the GPE Bits in all GPE registers in all GPE blocks */

	status = FUNC4(acpi_hw_clear_gpe_block, NULL);

exit:
	FUNC8(status);
}