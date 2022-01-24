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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  sleep_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SLEEP_TYPE_INVALID ; 
 int /*<<< orphan*/  ACPI_SST_WAKING ; 
 int /*<<< orphan*/  ACPI_SST_WORKING ; 
 scalar_t__ ACPI_X_WAKE_STATUS ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  METHOD_PATHNAME__SST ; 
 int /*<<< orphan*/  METHOD_PATHNAME__WAK ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__ acpi_gbl_FADT ; 
 int /*<<< orphan*/  acpi_gbl_sleep_type_a ; 
 int /*<<< orphan*/  acpi_gbl_system_awake_and_running ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_extended_wake ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(u8 sleep_state)
{
	FUNC0(hw_extended_wake);

	/* Ensure enter_sleep_state_prep -> enter_sleep_state ordering */

	acpi_gbl_sleep_type_a = ACPI_SLEEP_TYPE_INVALID;

	/* Execute the wake methods */

	FUNC1(METHOD_PATHNAME__SST, ACPI_SST_WAKING);
	FUNC1(METHOD_PATHNAME__WAK, sleep_state);

	/*
	 * Some BIOS code assumes that WAK_STS will be cleared on resume
	 * and use it to determine whether the system is rebooting or
	 * resuming. Clear WAK_STS for compatibility.
	 */
	(void)FUNC2((u64)ACPI_X_WAKE_STATUS, &acpi_gbl_FADT.sleep_status);
	acpi_gbl_system_awake_and_running = TRUE;

	FUNC1(METHOD_PATHNAME__SST, ACPI_SST_WORKING);
	FUNC3(AE_OK);
}