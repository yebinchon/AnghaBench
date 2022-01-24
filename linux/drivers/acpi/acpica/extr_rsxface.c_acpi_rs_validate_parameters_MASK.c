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
struct acpi_namespace_node {scalar_t__ type; } ;
struct acpi_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_TYPE ; 
 struct acpi_namespace_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_validate_parameters ; 

__attribute__((used)) static acpi_status
FUNC5(acpi_handle device_handle,
			    struct acpi_buffer *buffer,
			    struct acpi_namespace_node **return_node)
{
	acpi_status status;
	struct acpi_namespace_node *node;

	FUNC1(rs_validate_parameters);

	/*
	 * Must have a valid handle to an ACPI device
	 */
	if (!device_handle) {
		FUNC4(AE_BAD_PARAMETER);
	}

	node = FUNC2(device_handle);
	if (!node) {
		FUNC4(AE_BAD_PARAMETER);
	}

	if (node->type != ACPI_TYPE_DEVICE) {
		FUNC4(AE_TYPE);
	}

	/*
	 * Validate the user buffer object
	 *
	 * if there is a non-zero buffer length we also need a valid pointer in
	 * the buffer. If it's a zero buffer length, we'll be returning the
	 * needed buffer size (later), so keep going.
	 */
	status = FUNC3(buffer);
	if (FUNC0(status)) {
		FUNC4(status);
	}

	*return_node = node;
	FUNC4(AE_OK);
}