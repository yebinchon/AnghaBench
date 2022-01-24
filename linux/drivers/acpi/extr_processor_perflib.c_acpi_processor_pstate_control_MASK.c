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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  smi_command; scalar_t__ pstate_control; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int EIO ; 
 TYPE_1__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(void)
{
	acpi_status status;

	if (!acpi_gbl_FADT.smi_command || !acpi_gbl_FADT.pstate_control)
		return 0;

	FUNC0((ACPI_DB_INFO,
			  "Writing pstate_control [0x%x] to smi_command [0x%x]\n",
			  acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command));

	status = FUNC3(acpi_gbl_FADT.smi_command,
				    (u32)acpi_gbl_FADT.pstate_control, 8);
	if (FUNC2(status))
		return 1;

	FUNC1((AE_INFO, status,
			"Failed to write pstate_control [0x%x] to smi_command [0x%x]",
			acpi_gbl_FADT.pstate_control, acpi_gbl_FADT.smi_command));
	return -EIO;
}