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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  acpi_walk_callback ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**)) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_NS_WALK_UNLOCK ; 
 scalar_t__ ACPI_TYPE_LOCAL_MAX ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  acpi_gbl_namespace_rw_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC9(acpi_object_type type,
		    acpi_handle start_object,
		    u32 max_depth,
		    acpi_walk_callback descending_callback,
		    acpi_walk_callback ascending_callback,
		    void *context, void **return_value)
{
	acpi_status status;

	FUNC1(acpi_walk_namespace);

	/* Parameter validation */

	if ((type > ACPI_TYPE_LOCAL_MAX) ||
	    (!max_depth) || (!descending_callback && !ascending_callback)) {
		FUNC8(AE_BAD_PARAMETER);
	}

	/*
	 * Need to acquire the namespace reader lock to prevent interference
	 * with any concurrent table unloads (which causes the deletion of
	 * namespace objects). We cannot allow the deletion of a namespace node
	 * while the user function is using it. The exception to this are the
	 * nodes created and deleted during control method execution -- these
	 * nodes are marked as temporary nodes and are ignored by the namespace
	 * walk. Thus, control methods can be executed while holding the
	 * namespace deletion lock (and the user function can execute control
	 * methods.)
	 */
	status = FUNC5(&acpi_gbl_namespace_rw_lock);
	if (FUNC0(status)) {
		FUNC8(status);
	}

	/*
	 * Lock the namespace around the walk. The namespace will be
	 * unlocked/locked around each call to the user function - since the user
	 * function must be allowed to make ACPICA calls itself (for example, it
	 * will typically execute control methods during device enumeration.)
	 */
	status = FUNC4(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		goto unlock_and_exit;
	}

	/* Now we can validate the starting node */

	if (!FUNC2(start_object)) {
		status = AE_BAD_PARAMETER;
		goto unlock_and_exit2;
	}

	status = FUNC3(type, start_object, max_depth,
					ACPI_NS_WALK_UNLOCK,
					descending_callback, ascending_callback,
					context, return_value);

unlock_and_exit2:
	(void)FUNC6(ACPI_MTX_NAMESPACE);

unlock_and_exit:
	(void)FUNC7(&acpi_gbl_namespace_rw_lock);
	FUNC8(status);
}