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
struct TYPE_2__ {int /*<<< orphan*/  aml_op_name; int /*<<< orphan*/  aml; } ;
union acpi_parse_object {TYPE_1__ common; } ;
struct acpi_walk_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TRACE_AML_OPCODE ; 
 int ACPI_TRACE_OPCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int acpi_gbl_trace_flags ; 
 int /*<<< orphan*/  ex_start_trace_opcode ; 

void
FUNC3(union acpi_parse_object *op,
			   struct acpi_walk_state *walk_state)
{

	FUNC0(ex_start_trace_opcode);

	if (FUNC2(NULL) &&
	    (acpi_gbl_trace_flags & ACPI_TRACE_OPCODE)) {
		FUNC1(ACPI_TRACE_AML_OPCODE, TRUE,
				 op->common.aml, op->common.aml_op_name);
	}
}