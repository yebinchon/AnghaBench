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
struct TYPE_2__ {scalar_t__ aml_opcode; int flags; } ;
union acpi_parse_object {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_ALLOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_PARSEOP_GENERIC ; 
 scalar_t__ AML_INT_RETURN_VALUE_OP ; 
 int /*<<< orphan*/  FUNC2 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_cache ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_ext_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 int /*<<< orphan*/  ps_free_op ; 

void FUNC4(union acpi_parse_object *op)
{
	FUNC1(ps_free_op);

	FUNC2(op);
	if (op->common.aml_opcode == AML_INT_RETURN_VALUE_OP) {
		FUNC0((ACPI_DB_ALLOCATIONS,
				  "Free retval op: %p\n", op));
	}

	if (op->common.flags & ACPI_PARSEOP_GENERIC) {
		(void)FUNC3(acpi_gbl_ps_node_cache, op);
	} else {
		(void)FUNC3(acpi_gbl_ps_node_ext_cache, op);
	}
}