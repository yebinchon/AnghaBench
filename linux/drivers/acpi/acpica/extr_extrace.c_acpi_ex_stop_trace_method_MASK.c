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
struct TYPE_2__ {int /*<<< orphan*/ * aml_start; } ;
union acpi_operand_object {TYPE_1__ method; } ;
typedef  scalar_t__ u8 ;
struct acpi_walk_state {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TRACE_AML_METHOD ; 
 int ACPI_TRACE_ONESHOT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  acpi_dbg_layer ; 
 int /*<<< orphan*/  acpi_dbg_level ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  acpi_gbl_original_dbg_layer ; 
 int /*<<< orphan*/  acpi_gbl_original_dbg_level ; 
 int acpi_gbl_trace_flags ; 
 int /*<<< orphan*/ * acpi_gbl_trace_method_name ; 
 union acpi_operand_object* acpi_gbl_trace_method_object ; 
 char* FUNC4 (struct acpi_namespace_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ex_stop_trace_method ; 

void
FUNC5(struct acpi_namespace_node *method_node,
			  union acpi_operand_object *obj_desc,
			  struct acpi_walk_state *walk_state)
{
	char *pathname = NULL;
	u8 enabled;

	FUNC1(ex_stop_trace_method);

	if (method_node) {
		pathname = FUNC4(method_node, TRUE);
	}

	enabled = FUNC3(NULL);

	if (enabled) {
		FUNC2(ACPI_TRACE_AML_METHOD, FALSE,
				 obj_desc ? obj_desc->method.aml_start : NULL,
				 pathname);
	}

	/* Check whether the tracer should be stopped */

	if (acpi_gbl_trace_method_object == obj_desc) {

		/* Disable further tracing if type is one-shot */

		if (acpi_gbl_trace_flags & ACPI_TRACE_ONESHOT) {
			acpi_gbl_trace_method_name = NULL;
		}

		acpi_dbg_level = acpi_gbl_original_dbg_level;
		acpi_dbg_layer = acpi_gbl_original_dbg_layer;
		acpi_gbl_trace_method_object = NULL;
	}

	if (pathname) {
		FUNC0(pathname);
	}
}