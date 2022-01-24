#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {int /*<<< orphan*/ * handler; struct acpi_namespace_node* node; scalar_t__ length; scalar_t__ address; int /*<<< orphan*/  space_id; } ;
struct TYPE_12__ {struct acpi_namespace_node* scope_node; int /*<<< orphan*/ * method_REG; int /*<<< orphan*/  aml_length; int /*<<< orphan*/ * aml_start; } ;
union acpi_operand_object {TYPE_7__ common; TYPE_6__ region; TYPE_5__ extra; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_state {TYPE_4__* scope_info; TYPE_2__* op; } ;
struct acpi_namespace_node {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
struct TYPE_10__ {struct acpi_namespace_node* node; } ;
struct TYPE_11__ {TYPE_3__ scope; } ;
struct TYPE_8__ {struct acpi_namespace_node* node; } ;
struct TYPE_9__ {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_LOAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_REGION ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int AOPOBJ_OBJECT_INITIALIZED ; 
 int AOPOBJ_REG_CONNECTED ; 
 int AOPOBJ_SETUP_COMPLETE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_namespace_node*,union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct acpi_namespace_node*) ; 
 union acpi_operand_object* FUNC6 (union acpi_operand_object*) ; 
 union acpi_operand_object* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ex_create_region ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC11(u8 * aml_start,
		      u32 aml_length,
		      u8 space_id, struct acpi_walk_state *walk_state)
{
	acpi_status status;
	union acpi_operand_object *obj_desc;
	struct acpi_namespace_node *node;
	union acpi_operand_object *region_obj2;

	FUNC2(ex_create_region);

	/* Get the Namespace Node */

	node = walk_state->op->common.node;

	/*
	 * If the region object is already attached to this node,
	 * just return
	 */
	if (FUNC5(node)) {
		FUNC10(AE_OK);
	}

	/*
	 * Space ID must be one of the predefined IDs, or in the user-defined
	 * range
	 */
	if (!FUNC3(space_id)) {
		/*
		 * Print an error message, but continue. We don't want to abort
		 * a table load for this exception. Instead, if the region is
		 * actually used at runtime, abort the executing method.
		 */
		FUNC1((AE_INFO,
			    "Invalid/unknown Address Space ID: 0x%2.2X",
			    space_id));
	}

	FUNC0((ACPI_DB_LOAD, "Region Type - %s (0x%X)\n",
			  FUNC8(space_id), space_id));

	/* Create the region descriptor */

	obj_desc = FUNC7(ACPI_TYPE_REGION);
	if (!obj_desc) {
		status = AE_NO_MEMORY;
		goto cleanup;
	}

	/*
	 * Remember location in AML stream of address & length
	 * operands since they need to be evaluated at run time.
	 */
	region_obj2 = FUNC6(obj_desc);
	region_obj2->extra.aml_start = aml_start;
	region_obj2->extra.aml_length = aml_length;
	region_obj2->extra.method_REG = NULL;
	if (walk_state->scope_info) {
		region_obj2->extra.scope_node =
		    walk_state->scope_info->scope.node;
	} else {
		region_obj2->extra.scope_node = node;
	}

	/* Init the region from the operands */

	obj_desc->region.space_id = space_id;
	obj_desc->region.address = 0;
	obj_desc->region.length = 0;
	obj_desc->region.node = node;
	obj_desc->region.handler = NULL;
	obj_desc->common.flags &=
	    ~(AOPOBJ_SETUP_COMPLETE | AOPOBJ_REG_CONNECTED |
	      AOPOBJ_OBJECT_INITIALIZED);

	/* Install the new region object in the parent Node */

	status = FUNC4(node, obj_desc, ACPI_TYPE_REGION);

cleanup:

	/* Remove local reference to the object */

	FUNC9(obj_desc);
	FUNC10(status);
}