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
struct TYPE_6__ {int flags; union acpi_operand_object* next; union acpi_operand_object* handler; int /*<<< orphan*/  space_id; } ;
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* setup ) (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;union acpi_operand_object* region_list; } ;
struct TYPE_4__ {void* region_context; } ;
union acpi_operand_object {TYPE_3__ region; TYPE_2__ address_space; TYPE_1__ extra; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  (* acpi_adr_space_setup ) (union acpi_operand_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 int /*<<< orphan*/  ACPI_REGION_DEACTIVATE ; 
 int /*<<< orphan*/  ACPI_REG_DISCONNECT ; 
 int /*<<< orphan*/  AE_INFO ; 
 int AOPOBJ_SETUP_COMPLETE ; 
 int /*<<< orphan*/  FUNC5 (union acpi_operand_object*,int /*<<< orphan*/ ) ; 
 union acpi_operand_object* FUNC6 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ev_detach_region ; 
 int /*<<< orphan*/  return_VOID ; 

void
FUNC11(union acpi_operand_object *region_obj,
		      u8 acpi_ns_is_locked)
{
	union acpi_operand_object *handler_obj;
	union acpi_operand_object *obj_desc;
	union acpi_operand_object *start_desc;
	union acpi_operand_object **last_obj_ptr;
	acpi_adr_space_setup region_setup;
	void **region_context;
	union acpi_operand_object *region_obj2;
	acpi_status status;

	FUNC4(ev_detach_region);

	region_obj2 = FUNC6(region_obj);
	if (!region_obj2) {
		return_VOID;
	}
	region_context = &region_obj2->extra.region_context;

	/* Get the address handler from the region object */

	handler_obj = region_obj->region.handler;
	if (!handler_obj) {

		/* This region has no handler, all done */

		return_VOID;
	}

	/* Find this region in the handler's list */

	obj_desc = handler_obj->address_space.region_list;
	start_desc = obj_desc;
	last_obj_ptr = &handler_obj->address_space.region_list;

	while (obj_desc) {

		/* Is this the correct Region? */

		if (obj_desc == region_obj) {
			FUNC0((ACPI_DB_OPREGION,
					  "Removing Region %p from address handler %p\n",
					  region_obj, handler_obj));

			/* This is it, remove it from the handler's list */

			*last_obj_ptr = obj_desc->region.next;
			obj_desc->region.next = NULL;	/* Must clear field */

			if (acpi_ns_is_locked) {
				status =
				    FUNC9(ACPI_MTX_NAMESPACE);
				if (FUNC3(status)) {
					return_VOID;
				}
			}

			/* Now stop region accesses by executing the _REG method */

			status =
			    FUNC5(region_obj,
						       ACPI_REG_DISCONNECT);
			if (FUNC3(status)) {
				FUNC2((AE_INFO, status,
						"from region _REG, [%s]",
						FUNC8
						(region_obj->region.space_id)));
			}

			if (acpi_ns_is_locked) {
				status =
				    FUNC7(ACPI_MTX_NAMESPACE);
				if (FUNC3(status)) {
					return_VOID;
				}
			}

			/*
			 * If the region has been activated, call the setup handler with
			 * the deactivate notification
			 */
			if (region_obj->region.flags & AOPOBJ_SETUP_COMPLETE) {
				region_setup = handler_obj->address_space.setup;
				status =
				    region_setup(region_obj,
						 ACPI_REGION_DEACTIVATE,
						 handler_obj->address_space.
						 context, region_context);

				/*
				 * region_context should have been released by the deactivate
				 * operation. We don't need access to it anymore here.
				 */
				if (region_context) {
					*region_context = NULL;
				}

				/* Init routine may fail, Just ignore errors */

				if (FUNC3(status)) {
					FUNC2((AE_INFO, status,
							"from region handler - deactivate, [%s]",
							FUNC8
							(region_obj->region.
							 space_id)));
				}

				region_obj->region.flags &=
				    ~(AOPOBJ_SETUP_COMPLETE);
			}

			/*
			 * Remove handler reference in the region
			 *
			 * NOTE: this doesn't mean that the region goes away, the region
			 * is just inaccessible as indicated to the _REG method
			 *
			 * If the region is on the handler's list, this must be the
			 * region's handler
			 */
			region_obj->region.handler = NULL;
			FUNC10(handler_obj);

			return_VOID;
		}

		/* Walk the linked list of handlers */

		last_obj_ptr = &obj_desc->region.next;
		obj_desc = obj_desc->region.next;

		/* Prevent infinite loop if list is corrupted */

		if (obj_desc == start_desc) {
			FUNC1((AE_INFO,
				    "Circular handler list in region object %p",
				    region_obj));
			return_VOID;
		}
	}

	/* If we get here, the region was not in the handler's region list */

	FUNC0((ACPI_DB_OPREGION,
			  "Cannot remove region %p from address handler %p\n",
			  region_obj, handler_obj));

	return_VOID;
}