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
struct TYPE_2__ {scalar_t__ length; int /*<<< orphan*/  pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_buffer {union acpi_object* pointer; void* length; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_rsdesc_size ;

/* Variables and functions */
 void* ACPI_ALLOCATE_LOCAL_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union acpi_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_namespace_node*,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct acpi_namespace_node*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct acpi_buffer*,struct acpi_buffer*) ; 

__attribute__((used)) static acpi_status
FUNC8(struct acpi_namespace_node *node, char *name)
{
	acpi_status status;
	struct acpi_buffer return_buffer;
	struct acpi_buffer resource_buffer;
	struct acpi_buffer new_aml;
	union acpi_object *original_aml;

	FUNC6("Resource Conversion Comparison:\n");

	new_aml.length = ACPI_ALLOCATE_LOCAL_BUFFER;
	return_buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;
	resource_buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;

	/* Get the original _CRS AML resource template */

	status = FUNC3(node, name, NULL, &return_buffer);
	if (FUNC0(status)) {
		FUNC6("Could not obtain %s: %s\n",
			       name, FUNC4(status));
		return (status);
	}

	/* Get the AML resource template, converted to internal resource structs */

	status = FUNC5(node, &resource_buffer);
	if (FUNC0(status)) {
		FUNC6("AcpiGetCurrentResources failed: %s\n",
			       FUNC4(status));
		goto exit1;
	}

	/* Convert internal resource list to external AML resource template */

	status = FUNC7(&resource_buffer, &new_aml);
	if (FUNC0(status)) {
		FUNC6("AcpiRsCreateAmlResources failed: %s\n",
			       FUNC4(status));
		goto exit2;
	}

	/* Compare original AML to the newly created AML resource list */

	original_aml = return_buffer.pointer;

	FUNC2(original_aml->buffer.pointer,
				      (acpi_rsdesc_size)original_aml->buffer.
				      length, new_aml.pointer,
				      (acpi_rsdesc_size)new_aml.length);

	/* Cleanup and exit */

	FUNC1(new_aml.pointer);
exit2:
	FUNC1(resource_buffer.pointer);
exit1:
	FUNC1(return_buffer.pointer);
	return (status);
}