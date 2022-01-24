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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct acpi_resource {int dummy; } ;
typedef  scalar_t__ acpi_status ;
typedef  int /*<<< orphan*/  acpi_size ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct acpi_resource**)) ; 
 scalar_t__ AE_AML_NO_RESOURCE_END_TAG ; 
 scalar_t__ AE_NO_MEMORY ; 
 scalar_t__ AE_OK ; 
 int /*<<< orphan*/  acpi_rs_convert_aml_to_resources ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

acpi_status
FUNC7(u8 *aml_buffer,
			u16 aml_buffer_length,
			struct acpi_resource **resource_ptr)
{
	acpi_status status;
	acpi_size list_size_needed;
	void *resource;
	void *current_resource_ptr;

	FUNC3(acpi_buffer_to_resource);

	/*
	 * Note: we allow AE_AML_NO_RESOURCE_END_TAG, since an end tag
	 * is not required here.
	 */

	/* Get the required length for the converted resource */

	status =
	    FUNC4(aml_buffer, aml_buffer_length,
				    &list_size_needed);
	if (status == AE_AML_NO_RESOURCE_END_TAG) {
		status = AE_OK;
	}
	if (FUNC1(status)) {
		FUNC6(status);
	}

	/* Allocate a buffer for the converted resource */

	resource = FUNC0(list_size_needed);
	current_resource_ptr = resource;
	if (!resource) {
		FUNC6(AE_NO_MEMORY);
	}

	/* Perform the AML-to-Resource conversion */

	status = FUNC5(NULL, aml_buffer, aml_buffer_length,
					    acpi_rs_convert_aml_to_resources,
					    &current_resource_ptr);
	if (status == AE_AML_NO_RESOURCE_END_TAG) {
		status = AE_OK;
	}
	if (FUNC1(status)) {
		FUNC2(resource);
	} else {
		*resource_ptr = resource;
	}

	FUNC6(status);
}