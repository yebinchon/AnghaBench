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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_NUM_MUTEX ; 
 int /*<<< orphan*/  acpi_gbl_gpe_lock ; 
 int /*<<< orphan*/  acpi_gbl_hardware_lock ; 
 int /*<<< orphan*/  acpi_gbl_namespace_rw_lock ; 
 int /*<<< orphan*/  acpi_gbl_osi_mutex ; 
 int /*<<< orphan*/  acpi_gbl_reference_count_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_mutex_initialize ; 

acpi_status FUNC8(void)
{
	u32 i;
	acpi_status status;

	FUNC1(ut_mutex_initialize);

	/* Create each of the predefined mutex objects */

	for (i = 0; i < ACPI_NUM_MUTEX; i++) {
		status = FUNC5(i);
		if (FUNC0(status)) {
			FUNC7(status);
		}
	}

	/* Create the spinlocks for use at interrupt level or for speed */

	status = FUNC2 (&acpi_gbl_gpe_lock);
	if (FUNC0 (status)) {
		FUNC7 (status);
	}

	status = FUNC4(&acpi_gbl_hardware_lock);
	if (FUNC0 (status)) {
		FUNC7 (status);
	}

	status = FUNC2(&acpi_gbl_reference_count_lock);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	/* Mutex for _OSI support */

	status = FUNC3(&acpi_gbl_osi_mutex);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	/* Create the reader/writer lock for namespace access */

	status = FUNC6(&acpi_gbl_namespace_rw_lock);
	if (FUNC0(status)) {
		FUNC7(status);
	}

	FUNC7(status);
}