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
struct TYPE_2__ {int flags; } ;
union acpi_operand_object {TYPE_1__ package; } ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC1 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  acpi_ds_init_package_element ; 
 union acpi_operand_object* FUNC2 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

acpi_status
FUNC4(acpi_handle obj_handle,
			 u32 level, void *context, void **return_value)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;
	struct acpi_namespace_node *node =
	    (struct acpi_namespace_node *)obj_handle;

	obj_desc = FUNC2(node);
	if (!obj_desc) {
		return (AE_OK);
	}

	/* Exit if package is already initialized */

	if (obj_desc->package.flags & AOPOBJ_DATA_VALID) {
		return (AE_OK);
	}

	status = FUNC1(obj_desc);
	if (FUNC0(status)) {
		return (AE_OK);
	}

	status =
	    FUNC3(obj_desc, NULL,
				      acpi_ds_init_package_element, NULL);
	if (FUNC0(status)) {
		return (AE_OK);
	}

	obj_desc->package.flags |= AOPOBJ_DATA_VALID;
	return (AE_OK);
}