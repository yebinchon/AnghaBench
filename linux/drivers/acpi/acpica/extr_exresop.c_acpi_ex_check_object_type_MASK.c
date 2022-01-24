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
union acpi_operand_object {TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ ACPI_TYPE_ANY ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_TYPE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_AML_CONSTANT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static acpi_status
FUNC3(acpi_object_type type_needed,
			  acpi_object_type this_type, void *object)
{
	FUNC1();

	if (type_needed == ACPI_TYPE_ANY) {

		/* All types OK, so we don't perform any typechecks */

		return (AE_OK);
	}

	if (type_needed == ACPI_TYPE_LOCAL_REFERENCE) {
		/*
		 * Allow the AML "Constant" opcodes (Zero, One, etc.) to be reference
		 * objects and thus allow them to be targets. (As per the ACPI
		 * specification, a store to a constant is a noop.)
		 */
		if ((this_type == ACPI_TYPE_INTEGER) &&
		    (((union acpi_operand_object *)object)->common.flags &
		     AOPOBJ_AML_CONSTANT)) {
			return (AE_OK);
		}
	}

	if (type_needed != this_type) {
		FUNC0((AE_INFO,
			    "Needed type [%s], found [%s] %p",
			    FUNC2(type_needed),
			    FUNC2(this_type), object));

		return (AE_AML_OPERAND_TYPE);
	}

	return (AE_OK);
}