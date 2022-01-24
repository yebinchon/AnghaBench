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
struct TYPE_2__ {scalar_t__* aml; scalar_t__ flags; } ;
union acpi_parse_object {TYPE_1__ common; } ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct acpi_opcode_info {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ACPI_PARSEOP_BYTELIST ; 
 scalar_t__ ACPI_PARSEOP_DEFERRED ; 
 scalar_t__ ACPI_PARSEOP_GENERIC ; 
 scalar_t__ ACPI_PARSEOP_NAMED_OBJECT ; 
 int AML_DEFER ; 
 scalar_t__ AML_INT_BYTELIST_OP ; 
 int AML_NAMED ; 
 scalar_t__ AML_SCOPE_OP ; 
 int /*<<< orphan*/  FUNC1 (union acpi_parse_object*) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_parse_object*) ; 
 scalar_t__ acpi_gbl_capture_comments ; 
 union acpi_parse_object* acpi_gbl_current_scope ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_cache ; 
 int /*<<< orphan*/  acpi_gbl_ps_node_ext_cache ; 
 union acpi_parse_object* FUNC3 (int /*<<< orphan*/ ) ; 
 struct acpi_opcode_info* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_parse_object*,scalar_t__) ; 

union acpi_parse_object *FUNC6(u16 opcode, u8 *aml)
{
	union acpi_parse_object *op;
	const struct acpi_opcode_info *op_info;
	u8 flags = ACPI_PARSEOP_GENERIC;

	FUNC0();

	op_info = FUNC4(opcode);

	/* Determine type of parse_op required */

	if (op_info->flags & AML_DEFER) {
		flags = ACPI_PARSEOP_DEFERRED;
	} else if (op_info->flags & AML_NAMED) {
		flags = ACPI_PARSEOP_NAMED_OBJECT;
	} else if (opcode == AML_INT_BYTELIST_OP) {
		flags = ACPI_PARSEOP_BYTELIST;
	}

	/* Allocate the minimum required size object */

	if (flags == ACPI_PARSEOP_GENERIC) {

		/* The generic op (default) is by far the most common (16 to 1) */

		op = FUNC3(acpi_gbl_ps_node_cache);
	} else {
		/* Extended parseop */

		op = FUNC3(acpi_gbl_ps_node_ext_cache);
	}

	/* Initialize the Op */

	if (op) {
		FUNC5(op, opcode);
		op->common.aml = aml;
		op->common.flags = flags;
		FUNC1(op);

		if (opcode == AML_SCOPE_OP) {
			acpi_gbl_current_scope = op;
		}

		if (acpi_gbl_capture_comments) {
			FUNC2(op);
		}
	}

	return (op);
}