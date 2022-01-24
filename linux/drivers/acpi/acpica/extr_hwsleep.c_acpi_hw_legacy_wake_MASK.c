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
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_2__ {int /*<<< orphan*/  status_register_id; int /*<<< orphan*/  enable_register_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_WAKE_STATUS ; 
 int /*<<< orphan*/  ACPI_CLEAR_STATUS ; 
 int /*<<< orphan*/  ACPI_ENABLE_EVENT ; 
 size_t ACPI_EVENT_POWER_BUTTON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_SLEEP_TYPE_INVALID ; 
 int /*<<< orphan*/  ACPI_SST_WAKING ; 
 int /*<<< orphan*/  ACPI_SST_WORKING ; 
 int /*<<< orphan*/  METHOD_PATHNAME__SST ; 
 int /*<<< orphan*/  METHOD_PATHNAME__WAK ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* acpi_gbl_fixed_event_info ; 
 int /*<<< orphan*/  acpi_gbl_sleep_type_a ; 
 int /*<<< orphan*/  acpi_gbl_system_awake_and_running ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw_legacy_wake ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(u8 sleep_state)
{
	acpi_status status;

	FUNC1(hw_legacy_wake);

	/* Ensure enter_sleep_state_prep -> enter_sleep_state ordering */

	acpi_gbl_sleep_type_a = ACPI_SLEEP_TYPE_INVALID;
	FUNC4(METHOD_PATHNAME__SST, ACPI_SST_WAKING);

	/*
	 * GPEs must be enabled before _WAK is called as GPEs
	 * might get fired there
	 *
	 * Restore the GPEs:
	 * 1) Disable all GPEs
	 * 2) Enable all runtime GPEs
	 */
	status = FUNC2();
	if (FUNC0(status)) {
		FUNC6(status);
	}

	status = FUNC3();
	if (FUNC0(status)) {
		FUNC6(status);
	}

	/*
	 * Now we can execute _WAK, etc. Some machines require that the GPEs
	 * are enabled before the wake methods are executed.
	 */
	FUNC4(METHOD_PATHNAME__WAK, sleep_state);

	/*
	 * Some BIOS code assumes that WAK_STS will be cleared on resume
	 * and use it to determine whether the system is rebooting or
	 * resuming. Clear WAK_STS for compatibility.
	 */
	(void)FUNC5(ACPI_BITREG_WAKE_STATUS,
				      ACPI_CLEAR_STATUS);
	acpi_gbl_system_awake_and_running = TRUE;

	/* Enable power button */

	(void)
	    FUNC5(acpi_gbl_fixed_event_info
				    [ACPI_EVENT_POWER_BUTTON].
				    enable_register_id, ACPI_ENABLE_EVENT);

	(void)
	    FUNC5(acpi_gbl_fixed_event_info
				    [ACPI_EVENT_POWER_BUTTON].
				    status_register_id, ACPI_CLEAR_STATUS);

	FUNC4(METHOD_PATHNAME__SST, ACPI_SST_WORKING);
	FUNC6(status);
}