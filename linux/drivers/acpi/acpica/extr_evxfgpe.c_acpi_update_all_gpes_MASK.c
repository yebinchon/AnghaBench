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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  ACPI_MTX_EVENTS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  acpi_ev_initialize_gpe_block ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ acpi_gbl_all_gpes_initialized ; 
 int /*<<< orphan*/  acpi_gbl_gpe_xrupt_list_head ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status FUNC8(void)
{
	acpi_status status;
	u8 is_polling_needed = FALSE;

	FUNC1(acpi_update_all_gpes);

	status = FUNC5(ACPI_MTX_EVENTS);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	if (acpi_gbl_all_gpes_initialized) {
		goto unlock_and_exit;
	}

	status = FUNC4(acpi_ev_initialize_gpe_block,
				       &is_polling_needed);
	if (FUNC2(status)) {
		acpi_gbl_all_gpes_initialized = TRUE;
	}

unlock_and_exit:
	(void)FUNC6(ACPI_MTX_EVENTS);

	if (is_polling_needed && acpi_gbl_all_gpes_initialized) {

		/* Poll GPEs to handle already triggered events */

		FUNC3(acpi_gbl_gpe_xrupt_list_head);
	}
	FUNC7(status);
}