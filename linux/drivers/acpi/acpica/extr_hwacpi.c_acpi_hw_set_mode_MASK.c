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
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  acpi_disable; int /*<<< orphan*/  smi_command; int /*<<< orphan*/  acpi_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  ACPI_SYS_MODE_ACPI 129 
#define  ACPI_SYS_MODE_LEGACY 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_HARDWARE_RESPONSE ; 
 int /*<<< orphan*/  AE_OK ; 
 TYPE_1__ acpi_gbl_FADT ; 
 scalar_t__ acpi_gbl_reduced_hardware ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  hw_set_mode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(u32 mode)
{

	acpi_status status;

	FUNC4(hw_set_mode);

	/* If the Hardware Reduced flag is set, machine is always in acpi mode */

	if (acpi_gbl_reduced_hardware) {
		FUNC6(AE_OK);
	}

	/*
	 * ACPI 2.0 clarified that if SMI_CMD in FADT is zero,
	 * system does not support mode transition.
	 */
	if (!acpi_gbl_FADT.smi_command) {
		FUNC1((AE_INFO,
			    "No SMI_CMD in FADT, mode transition failed"));
		FUNC6(AE_NO_HARDWARE_RESPONSE);
	}

	/*
	 * ACPI 2.0 clarified the meaning of ACPI_ENABLE and ACPI_DISABLE
	 * in FADT: If it is zero, enabling or disabling is not supported.
	 * As old systems may have used zero for mode transition,
	 * we make sure both the numbers are zero to determine these
	 * transitions are not supported.
	 */
	if (!acpi_gbl_FADT.acpi_enable && !acpi_gbl_FADT.acpi_disable) {
		FUNC1((AE_INFO,
			    "No ACPI mode transition supported in this system "
			    "(enable/disable both zero)"));
		FUNC6(AE_OK);
	}

	switch (mode) {
	case ACPI_SYS_MODE_ACPI:

		/* BIOS should have disabled ALL fixed and GP events */

		status = FUNC5(acpi_gbl_FADT.smi_command,
					    (u32) acpi_gbl_FADT.acpi_enable, 8);
		FUNC0((ACPI_DB_INFO,
				  "Attempting to enable ACPI mode\n"));
		break;

	case ACPI_SYS_MODE_LEGACY:
		/*
		 * BIOS should clear all fixed status bits and restore fixed event
		 * enable bits to default
		 */
		status = FUNC5(acpi_gbl_FADT.smi_command,
					    (u32)acpi_gbl_FADT.acpi_disable, 8);
		FUNC0((ACPI_DB_INFO,
				  "Attempting to enable Legacy (non-ACPI) mode\n"));
		break;

	default:

		FUNC6(AE_BAD_PARAMETER);
	}

	if (FUNC3(status)) {
		FUNC2((AE_INFO, status,
				"Could not write ACPI mode change"));
		FUNC6(status);
	}

	FUNC6(AE_OK);
}