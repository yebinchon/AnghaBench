#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t value; int /*<<< orphan*/  class; union acpi_operand_object* node; union acpi_operand_object* object; union acpi_operand_object** where; int /*<<< orphan*/  target_type; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;
union acpi_operand_object {TYPE_4__ reference; TYPE_1__ common; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {TYPE_3__* arguments; TYPE_2__* local_variables; } ;
struct acpi_namespace_node {TYPE_4__ reference; TYPE_1__ common; } ;
struct TYPE_7__ {union acpi_operand_object* object; } ;
struct TYPE_6__ {union acpi_operand_object* object; } ;

/* Variables and functions */
#define  ACPI_DESC_TYPE_NAMED 140 
#define  ACPI_DESC_TYPE_OPERAND 139 
#define  ACPI_DESC_TYPE_PARSER 138 
 int FUNC0 (union acpi_operand_object*) ; 
#define  ACPI_REFCLASS_ARG 137 
#define  ACPI_REFCLASS_DEBUG 136 
#define  ACPI_REFCLASS_INDEX 135 
#define  ACPI_REFCLASS_LOCAL 134 
#define  ACPI_REFCLASS_NAME 133 
#define  ACPI_REFCLASS_REFOF 132 
#define  ACPI_REFCLASS_TABLE 131 
#define  ACPI_TYPE_BUFFER_FIELD 130 
 int /*<<< orphan*/  ACPI_TYPE_LOCAL_MAX ; 
#define  ACPI_TYPE_LOCAL_REFERENCE 129 
#define  ACPI_TYPE_PACKAGE 128 
 int /*<<< orphan*/  FUNC1 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*) ; 

void
FUNC6(union acpi_operand_object *obj_desc,
				struct acpi_walk_state *walk_state)
{
	u8 type;

	FUNC3("%p ", obj_desc);

	if (!obj_desc) {
		FUNC3("<Null Object>\n");
		return;
	}

	/* Decode the object type */

	switch (FUNC0(obj_desc)) {
	case ACPI_DESC_TYPE_PARSER:

		FUNC3("<Parser> ");
		break;

	case ACPI_DESC_TYPE_NAMED:

		FUNC2((struct acpi_namespace_node *)obj_desc);
		break;

	case ACPI_DESC_TYPE_OPERAND:

		type = obj_desc->common.type;
		if (type > ACPI_TYPE_LOCAL_MAX) {
			FUNC3(" Type %X [Invalid Type]", (u32)type);
			return;
		}

		/* Decode the ACPI object type */

		switch (obj_desc->common.type) {
		case ACPI_TYPE_LOCAL_REFERENCE:

			FUNC3("[%s] ",
				       FUNC5(obj_desc));

			/* Decode the reference */

			switch (obj_desc->reference.class) {
			case ACPI_REFCLASS_LOCAL:

				FUNC3("%X ",
					       obj_desc->reference.value);
				if (walk_state) {
					obj_desc = walk_state->local_variables
					    [obj_desc->reference.value].object;
					FUNC3("%p", obj_desc);
					FUNC1
					    (obj_desc);
				}
				break;

			case ACPI_REFCLASS_ARG:

				FUNC3("%X ",
					       obj_desc->reference.value);
				if (walk_state) {
					obj_desc = walk_state->arguments
					    [obj_desc->reference.value].object;
					FUNC3("%p", obj_desc);
					FUNC1
					    (obj_desc);
				}
				break;

			case ACPI_REFCLASS_INDEX:

				switch (obj_desc->reference.target_type) {
				case ACPI_TYPE_BUFFER_FIELD:

					FUNC3("%p",
						       obj_desc->reference.
						       object);
					FUNC1
					    (obj_desc->reference.object);
					break;

				case ACPI_TYPE_PACKAGE:

					FUNC3("%p",
						       obj_desc->reference.
						       where);
					if (!obj_desc->reference.where) {
						FUNC3
						    (" Uninitialized WHERE pointer");
					} else {
						FUNC1(*
									       (obj_desc->
										reference.
										where));
					}
					break;

				default:

					FUNC3
					    ("Unknown index target type");
					break;
				}
				break;

			case ACPI_REFCLASS_REFOF:

				if (!obj_desc->reference.object) {
					FUNC3
					    ("Uninitialized reference subobject pointer");
					break;
				}

				/* Reference can be to a Node or an Operand object */

				switch (FUNC0
					(obj_desc->reference.object)) {
				case ACPI_DESC_TYPE_NAMED:

					FUNC2(obj_desc->reference.
							    object);
					break;

				case ACPI_DESC_TYPE_OPERAND:

					FUNC1
					    (obj_desc->reference.object);
					break;

				default:
					break;
				}
				break;

			case ACPI_REFCLASS_NAME:

				FUNC2(obj_desc->reference.node);
				break;

			case ACPI_REFCLASS_DEBUG:
			case ACPI_REFCLASS_TABLE:

				FUNC3("\n");
				break;

			default:	/* Unknown reference class */

				FUNC3("%2.2X\n",
					       obj_desc->reference.class);
				break;
			}
			break;

		default:

			FUNC3("<Obj>          ");
			FUNC1(obj_desc);
			break;
		}
		break;

	default:

		FUNC3("<Not a valid ACPI Object Descriptor> [%s]",
			       FUNC4(obj_desc));
		break;
	}

	FUNC3("\n");
}