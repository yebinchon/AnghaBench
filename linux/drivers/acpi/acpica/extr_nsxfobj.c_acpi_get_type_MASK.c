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
struct acpi_namespace_node {int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_object_type ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 scalar_t__ ACPI_ROOT_OBJECT ; 
 int /*<<< orphan*/  ACPI_TYPE_ANY ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 struct acpi_namespace_node* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

acpi_status FUNC4(acpi_handle handle, acpi_object_type *ret_type)
{
	struct acpi_namespace_node *node;
	acpi_status status;

	/* Parameter Validation */

	if (!ret_type) {
		return (AE_BAD_PARAMETER);
	}

	/* Special case for the predefined Root Node (return type ANY) */

	if (handle == ACPI_ROOT_OBJECT) {
		*ret_type = ACPI_TYPE_ANY;
		return (AE_OK);
	}

	status = FUNC2(ACPI_MTX_NAMESPACE);
	if (FUNC0(status)) {
		return (status);
	}

	/* Convert and validate the handle */

	node = FUNC1(handle);
	if (!node) {
		(void)FUNC3(ACPI_MTX_NAMESPACE);
		return (AE_BAD_PARAMETER);
	}

	*ret_type = node->type;

	status = FUNC3(ACPI_MTX_NAMESPACE);
	return (status);
}