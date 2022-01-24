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
union acpi_object {scalar_t__ type; } ;
typedef  scalar_t__ u8 ;
struct acpi_object_list {int dummy; } ;
struct acpi_buffer {scalar_t__ length; int /*<<< orphan*/ * pointer; } ;
typedef  scalar_t__ acpi_string ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,scalar_t__,struct acpi_object_list*,struct acpi_buffer*,scalar_t__)) ; 
 scalar_t__ ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_NULL_OBJECT ; 
 int /*<<< orphan*/  AE_TYPE ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct acpi_object_list*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC10(acpi_handle handle,
			   acpi_string pathname,
			   struct acpi_object_list *external_params,
			   struct acpi_buffer *return_buffer,
			   acpi_object_type return_type)
{
	acpi_status status;
	u8 free_buffer_on_error = FALSE;
	acpi_handle target_handle;
	char *full_pathname;

	FUNC3(acpi_evaluate_object_typed);

	/* Return buffer must be valid */

	if (!return_buffer) {
		FUNC9(AE_BAD_PARAMETER);
	}

	if (return_buffer->length == ACPI_ALLOCATE_BUFFER) {
		free_buffer_on_error = TRUE;
	}

	/* Get a handle here, in order to build an error message if needed */

	target_handle = handle;
	if (pathname) {
		status = FUNC5(handle, pathname, &target_handle);
		if (FUNC1(status)) {
			FUNC9(status);
		}
	}

	full_pathname = FUNC6(target_handle);
	if (!full_pathname) {
		FUNC9(AE_NO_MEMORY);
	}

	/* Evaluate the object */

	status = FUNC4(target_handle, NULL, external_params,
				      return_buffer);
	if (FUNC1(status)) {
		goto exit;
	}

	/* Type ANY means "don't care about return value type" */

	if (return_type == ACPI_TYPE_ANY) {
		goto exit;
	}

	if (return_buffer->length == 0) {

		/* Error because caller specifically asked for a return value */

		FUNC0((AE_INFO, "%s did not return any object",
			    full_pathname));
		status = AE_NULL_OBJECT;
		goto exit;
	}

	/* Examine the object type returned from evaluate_object */

	if (((union acpi_object *)return_buffer->pointer)->type == return_type) {
		goto exit;
	}

	/* Return object type does not match requested type */

	FUNC0((AE_INFO,
		    "Incorrect return type from %s - received [%s], requested [%s]",
		    full_pathname,
		    FUNC8(((union acpi_object *)return_buffer->
					   pointer)->type),
		    FUNC8(return_type)));

	if (free_buffer_on_error) {
		/*
		 * Free a buffer created via ACPI_ALLOCATE_BUFFER.
		 * Note: We use acpi_os_free here because acpi_os_allocate was used
		 * to allocate the buffer. This purposefully bypasses the
		 * (optionally enabled) allocation tracking mechanism since we
		 * only want to track internal allocations.
		 */
		FUNC7(return_buffer->pointer);
		return_buffer->pointer = NULL;
	}

	return_buffer->length = 0;
	status = AE_TYPE;

exit:
	FUNC2(full_pathname);
	FUNC9(status);
}