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
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_EVENT_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  acpi_ev_global_lock_handler ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_pending_lock ; 
 int /*<<< orphan*/  acpi_gbl_global_lock_present ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_remove_global_lock_handler ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(void)
{
	acpi_status status;

	FUNC0(ev_remove_global_lock_handler);

	acpi_gbl_global_lock_present = FALSE;
	status = FUNC2(ACPI_EVENT_GLOBAL,
						 acpi_ev_global_lock_handler);

	FUNC1(acpi_gbl_global_lock_pending_lock);
	FUNC3(status);
}