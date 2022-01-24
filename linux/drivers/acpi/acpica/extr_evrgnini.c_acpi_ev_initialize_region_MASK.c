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
struct TYPE_8__ {union acpi_operand_object* handler; } ;
struct TYPE_7__ {int /*<<< orphan*/  space_id; TYPE_2__* node; } ;
struct TYPE_5__ {int flags; } ;
union acpi_operand_object {TYPE_4__ common_notify; TYPE_3__ region; TYPE_1__ common; } ;
struct acpi_namespace_node {int type; struct acpi_namespace_node* parent; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_adr_space_type ;
struct TYPE_6__ {struct acpi_namespace_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_REG_CONNECT ; 
#define  ACPI_TYPE_DEVICE 130 
#define  ACPI_TYPE_PROCESSOR 129 
#define  ACPI_TYPE_THERMAL 128 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_OBJECT_INITIALIZED ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC4 (int /*<<< orphan*/ ,union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 union acpi_operand_object* FUNC7 (struct acpi_namespace_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_initialize_region ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

acpi_status FUNC10(union acpi_operand_object *region_obj)
{
	union acpi_operand_object *handler_obj;
	union acpi_operand_object *obj_desc;
	acpi_adr_space_type space_id;
	struct acpi_namespace_node *node;

	FUNC1(ev_initialize_region);

	if (!region_obj) {
		FUNC9(AE_BAD_PARAMETER);
	}

	if (region_obj->common.flags & AOPOBJ_OBJECT_INITIALIZED) {
		FUNC9(AE_OK);
	}

	region_obj->common.flags |= AOPOBJ_OBJECT_INITIALIZED;

	node = region_obj->region.node->parent;
	space_id = region_obj->region.space_id;

	/*
	 * The following loop depends upon the root Node having no parent
	 * ie: acpi_gbl_root_node->Parent being set to NULL
	 */
	while (node) {

		/* Check to see if a handler exists */

		handler_obj = NULL;
		obj_desc = FUNC7(node);
		if (obj_desc) {

			/* Can only be a handler if the object exists */

			switch (node->type) {
			case ACPI_TYPE_DEVICE:
			case ACPI_TYPE_PROCESSOR:
			case ACPI_TYPE_THERMAL:

				handler_obj = obj_desc->common_notify.handler;
				break;

			default:

				/* Ignore other objects */

				break;
			}

			handler_obj =
			    FUNC4(space_id, handler_obj);
			if (handler_obj) {

				/* Found correct handler */

				FUNC0((ACPI_DB_OPREGION,
						  "Found handler %p for region %p in obj %p\n",
						  handler_obj, region_obj,
						  obj_desc));

				(void)FUNC2(handler_obj,
							    region_obj, FALSE);

				/*
				 * Tell all users that this region is usable by
				 * running the _REG method
				 */
				FUNC6();
				(void)FUNC3(region_obj,
								 ACPI_REG_CONNECT);
				FUNC5();
				FUNC9(AE_OK);
			}
		}

		/* This node does not have the handler we need; Pop up one level */

		node = node->parent;
	}

	/*
	 * If we get here, there is no handler for this region. This is not
	 * fatal because many regions get created before a handler is installed
	 * for said region.
	 */
	FUNC0((ACPI_DB_OPREGION,
			  "No handler for RegionType %s(%X) (RegionObj %p)\n",
			  FUNC8(space_id), space_id,
			  region_obj));

	FUNC9(AE_OK);
}