#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_3__ {int /*<<< orphan*/  os_mutex; } ;
struct TYPE_4__ {TYPE_1__ mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_BITREG_GLOBAL_LOCK_RELEASE ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_ENABLE_EVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NOT_ACQUIRED ; 
 int /*<<< orphan*/  AE_OK ; 
 void* FALSE ; 
 int /*<<< orphan*/  acpi_gbl_FACS ; 
 void* acpi_gbl_global_lock_acquired ; 
 TYPE_2__* acpi_gbl_global_lock_mutex ; 
 scalar_t__ acpi_gbl_global_lock_present ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_release_global_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

acpi_status FUNC7(void)
{
	u8 pending = FALSE;
	acpi_status status = AE_OK;

	FUNC1(ev_release_global_lock);

	/* Lock must be already acquired */

	if (!acpi_gbl_global_lock_acquired) {
		FUNC3((AE_INFO,
			      "Cannot release the ACPI Global Lock, it has not been acquired"));
		FUNC6(AE_NOT_ACQUIRED);
	}

	if (acpi_gbl_global_lock_present) {

		/* Allow any thread to release the lock */

		FUNC2(acpi_gbl_FACS, pending);

		/*
		 * If the pending bit was set, we must write GBL_RLS to the control
		 * register
		 */
		if (pending) {
			status =
			    FUNC5
			    (ACPI_BITREG_GLOBAL_LOCK_RELEASE,
			     ACPI_ENABLE_EVENT);
		}

		FUNC0((ACPI_DB_EXEC,
				  "Released hardware Global Lock\n"));
	}

	acpi_gbl_global_lock_acquired = FALSE;

	/* Release the local GL mutex */

	FUNC4(acpi_gbl_global_lock_mutex->mutex.os_mutex);
	FUNC6(status);
}