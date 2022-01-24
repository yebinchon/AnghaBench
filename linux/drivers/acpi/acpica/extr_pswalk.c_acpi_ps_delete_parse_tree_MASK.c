#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  string; } ;
struct TYPE_6__ {union acpi_parse_object* parent; union acpi_parse_object* next; TYPE_2__ value; int /*<<< orphan*/  aml_opcode; } ;
struct TYPE_4__ {scalar_t__ aml_opcode; } ;
union acpi_parse_object {TYPE_3__ common; TYPE_1__ named; } ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_PARSE_TREES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,union acpi_parse_object*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_LV_PARSE_TREES ; 
 scalar_t__ AML_INT_NAMEPATH_OP ; 
 scalar_t__ AML_STRING_OP ; 
 int /*<<< orphan*/  _COMPONENT ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_parse_object*) ; 
 union acpi_parse_object* FUNC5 (union acpi_parse_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ps_delete_parse_tree ; 
 int /*<<< orphan*/  return_VOID ; 

void FUNC7(union acpi_parse_object *subtree_root)
{
	union acpi_parse_object *op = subtree_root;
	union acpi_parse_object *next = NULL;
	union acpi_parse_object *parent = NULL;
	u32 level = 0;

	FUNC1(ps_delete_parse_tree, subtree_root);

	FUNC0((ACPI_DB_PARSE_TREES, " root %p\n", subtree_root));

	/* Visit all nodes in the subtree */

	while (op) {
		if (op != parent) {

			/* This is the descending case */

			if (FUNC2
			    (ACPI_LV_PARSE_TREES, _COMPONENT)) {

				/* This debug option will print the entire parse tree */

				FUNC3("      %*.s%s %p", (level * 4),
					       " ",
					       FUNC6(op->
								       common.
								       aml_opcode),
					       op);

				if (op->named.aml_opcode == AML_INT_NAMEPATH_OP) {
					FUNC3("  %4.4s",
						       op->common.value.string);
				}
				if (op->named.aml_opcode == AML_STRING_OP) {
					FUNC3("  %s",
						       op->common.value.string);
				}
				FUNC3("\n");
			}

			/* Look for an argument or child of the current op */

			next = FUNC5(op, 0);
			if (next) {

				/* Still going downward in tree (Op is not completed yet) */

				op = next;
				level++;
				continue;
			}
		}

		/* No more children, this Op is complete. */

		next = op->common.next;
		parent = op->common.parent;

		FUNC4(op);

		/* If we are back to the starting point, the walk is complete. */

		if (op == subtree_root) {
			return_VOID;
		}

		if (next) {
			op = next;
		} else {
			level--;
			op = parent;
		}
	}

	return_VOID;
}