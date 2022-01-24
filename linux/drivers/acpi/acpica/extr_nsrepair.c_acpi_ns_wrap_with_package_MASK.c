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
struct TYPE_2__ {union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_1__ package; } ;
struct acpi_evaluate_info {int return_flags; int /*<<< orphan*/  full_pathname; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_REPAIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_OBJECT_REPAIRED ; 
 int ACPI_OBJECT_WRAPPED ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 union acpi_operand_object* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_wrap_with_package ; 

acpi_status
FUNC4(struct acpi_evaluate_info *info,
			  union acpi_operand_object *original_object,
			  union acpi_operand_object **obj_desc_ptr)
{
	union acpi_operand_object *pkg_obj_desc;

	FUNC1(ns_wrap_with_package);

	/*
	 * Create the new outer package and populate it. The new
	 * package will have a single element, the lone sub-object.
	 */
	pkg_obj_desc = FUNC2(1);
	if (!pkg_obj_desc) {
		return (AE_NO_MEMORY);
	}

	pkg_obj_desc->package.elements[0] = original_object;

	FUNC0((ACPI_DB_REPAIR,
			  "%s: Wrapped %s with expected Package object\n",
			  info->full_pathname,
			  FUNC3(original_object)));

	/* Return the new object in the object pointer */

	*obj_desc_ptr = pkg_obj_desc;
	info->return_flags |= ACPI_OBJECT_REPAIRED | ACPI_OBJECT_WRAPPED;
	return (AE_OK);
}