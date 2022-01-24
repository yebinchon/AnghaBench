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
struct TYPE_4__ {int /*<<< orphan*/  elements; scalar_t__ count; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_2__ package; TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int acpi_size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  acpi_ut_copy_ielement_to_ielement ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,union acpi_operand_object*,int /*<<< orphan*/ ,struct acpi_walk_state*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ut_copy_ipackage_to_ipackage ; 

__attribute__((used)) static acpi_status
FUNC7(union acpi_operand_object *source_obj,
				  union acpi_operand_object *dest_obj,
				  struct acpi_walk_state *walk_state)
{
	acpi_status status = AE_OK;

	FUNC3(ut_copy_ipackage_to_ipackage);

	dest_obj->common.type = source_obj->common.type;
	dest_obj->common.flags = source_obj->common.flags;
	dest_obj->package.count = source_obj->package.count;

	/*
	 * Create the object array and walk the source package tree
	 */
	dest_obj->package.elements = FUNC0(((acpi_size)
							   source_obj->package.
							   count +
							   1) * sizeof(void *));
	if (!dest_obj->package.elements) {
		FUNC1((AE_INFO, "Package allocation failure"));
		FUNC6(AE_NO_MEMORY);
	}

	/*
	 * Copy the package element-by-element by walking the package "tree".
	 * This handles nested packages of arbitrary depth.
	 */
	status = FUNC5(source_obj, dest_obj,
					   acpi_ut_copy_ielement_to_ielement,
					   walk_state);
	if (FUNC2(status)) {

		/* On failure, delete the destination package object */

		FUNC4(dest_obj);
	}

	FUNC6(status);
}