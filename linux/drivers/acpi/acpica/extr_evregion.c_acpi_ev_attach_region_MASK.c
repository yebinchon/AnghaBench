#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {union acpi_operand_object* handler; union acpi_operand_object* next; int /*<<< orphan*/  space_id; int /*<<< orphan*/  node; } ;
struct TYPE_3__ {union acpi_operand_object* region_list; } ;
union acpi_operand_object {TYPE_2__ region; TYPE_1__ address_space; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_ALREADY_EXISTS ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ev_attach_region ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC6(union acpi_operand_object *handler_obj,
		      union acpi_operand_object *region_obj,
		      u8 acpi_ns_is_locked)
{

	FUNC1(ev_attach_region);

	/* Install the region's handler */

	if (region_obj->region.handler) {
		FUNC5(AE_ALREADY_EXISTS);
	}

	FUNC0((ACPI_DB_OPREGION,
			  "Adding Region [%4.4s] %p to address handler %p [%s]\n",
			  FUNC3(region_obj->region.node),
			  region_obj, handler_obj,
			  FUNC4(region_obj->region.
						  space_id)));

	/* Link this region to the front of the handler's list */

	region_obj->region.next = handler_obj->address_space.region_list;
	handler_obj->address_space.region_list = region_obj;
	region_obj->region.handler = handler_obj;
	FUNC2(handler_obj);

	FUNC5(AE_OK);
}