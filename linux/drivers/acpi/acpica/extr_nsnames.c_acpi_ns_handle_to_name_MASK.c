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
struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {scalar_t__ pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t ACPI_NAMESEG_SIZE ; 
 int /*<<< orphan*/  ACPI_PATH_SEGMENT_LENGTH ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 struct acpi_namespace_node* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC6 (struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ns_handle_to_name ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC8(acpi_handle target_handle, struct acpi_buffer *buffer)
{
	acpi_status status;
	struct acpi_namespace_node *node;
	const char *node_name;

	FUNC3(ns_handle_to_name, target_handle);

	node = FUNC4(target_handle);
	if (!node) {
		FUNC7(AE_BAD_PARAMETER);
	}

	/* Validate/Allocate/Clear caller buffer */

	status = FUNC6(buffer, ACPI_PATH_SEGMENT_LENGTH);
	if (FUNC2(status)) {
		FUNC7(status);
	}

	/* Just copy the ACPI name from the Node and zero terminate it */

	node_name = FUNC5(node);
	FUNC0(buffer->pointer, node_name);
	((char *)buffer->pointer)[ACPI_NAMESEG_SIZE] = 0;

	FUNC1((ACPI_DB_EXEC, "%4.4s\n", (char *)buffer->pointer));
	FUNC7(AE_OK);
}