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
struct TYPE_2__ {int /*<<< orphan*/  reference_count; } ;
union acpi_operand_object {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REF_INCREMENT ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ut_add_reference ; 

void FUNC4(union acpi_operand_object *object)
{

	FUNC1(ut_add_reference);

	/* Ensure that we have a valid object */

	if (!FUNC3(object)) {
		return;
	}

	FUNC0((ACPI_DB_ALLOCATIONS,
			  "Obj %p Current Refs=%X [To Be Incremented]\n",
			  object, object->common.reference_count));

	/* Increment the reference count */

	(void)FUNC2(object, REF_INCREMENT);
	return;
}