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
struct TYPE_2__ {scalar_t__ acquisition_depth; scalar_t__ thread_id; int /*<<< orphan*/  os_mutex; int /*<<< orphan*/ * owner_thread; } ;
union acpi_operand_object {TYPE_1__ mutex; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NOT_ACQUIRED ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*) ; 
 union acpi_operand_object* acpi_gbl_global_lock_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_release_mutex_object ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

acpi_status FUNC5(union acpi_operand_object *obj_desc)
{
	acpi_status status = AE_OK;

	FUNC0(ex_release_mutex_object);

	if (obj_desc->mutex.acquisition_depth == 0) {
		FUNC4(AE_NOT_ACQUIRED);
	}

	/* Match multiple Acquires with multiple Releases */

	obj_desc->mutex.acquisition_depth--;
	if (obj_desc->mutex.acquisition_depth != 0) {

		/* Just decrement the depth and return */

		FUNC4(AE_OK);
	}

	if (obj_desc->mutex.owner_thread) {

		/* Unlink the mutex from the owner's list */

		FUNC2(obj_desc);
		obj_desc->mutex.owner_thread = NULL;
	}

	/* Release the mutex, special case for Global Lock */

	if (obj_desc == acpi_gbl_global_lock_mutex) {
		status = FUNC1();
	} else {
		FUNC3(obj_desc->mutex.os_mutex);
	}

	/* Clear mutex info */

	obj_desc->mutex.thread_id = 0;
	FUNC4(status);
}