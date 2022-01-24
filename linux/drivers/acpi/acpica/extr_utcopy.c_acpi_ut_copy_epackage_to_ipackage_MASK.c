#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {size_t count; int /*<<< orphan*/  flags; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_2__ package; } ;
struct TYPE_3__ {size_t count; int /*<<< orphan*/ * elements; } ;
union acpi_object {TYPE_1__ package; } ;
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AOPOBJ_DATA_VALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,union acpi_operand_object**) ; 
 union acpi_operand_object* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_copy_epackage_to_ipackage ; 

__attribute__((used)) static acpi_status
FUNC6(union acpi_object *external_object,
				  union acpi_operand_object **internal_object)
{
	acpi_status status = AE_OK;
	union acpi_operand_object *package_object;
	union acpi_operand_object **package_elements;
	u32 i;

	FUNC1(ut_copy_epackage_to_ipackage);

	/* Create the package object */

	package_object =
	    FUNC3(external_object->package.count);
	if (!package_object) {
		FUNC5(AE_NO_MEMORY);
	}

	package_elements = package_object->package.elements;

	/*
	 * Recursive implementation. Probably ok, since nested external
	 * packages as parameters should be very rare.
	 */
	for (i = 0; i < external_object->package.count; i++) {
		status =
		    FUNC2(&external_object->package.
						    elements[i],
						    &package_elements[i]);
		if (FUNC0(status)) {

			/* Truncate package and delete it */

			package_object->package.count = i;
			package_elements[i] = NULL;
			FUNC4(package_object);
			FUNC5(status);
		}
	}

	/* Mark package data valid */

	package_object->package.flags |= AOPOBJ_DATA_VALID;

	*internal_object = package_object;
	FUNC5(status);
}