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
struct TYPE_2__ {scalar_t__ count; union acpi_operand_object** elements; } ;
union acpi_operand_object {TYPE_1__ package; } ;
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union acpi_operand_object*) ; 
 int /*<<< orphan*/  ns_remove_element ; 

__attribute__((used)) static void
FUNC2(union acpi_operand_object *obj_desc, u32 index)
{
	union acpi_operand_object **source;
	union acpi_operand_object **dest;
	u32 count;
	u32 new_count;
	u32 i;

	FUNC0(ns_remove_element);

	count = obj_desc->package.count;
	new_count = count - 1;

	source = obj_desc->package.elements;
	dest = source;

	/* Examine all elements of the package object, remove matched index */

	for (i = 0; i < count; i++) {
		if (i == index) {
			FUNC1(*source);	/* Remove one ref for being in pkg */
			FUNC1(*source);
		} else {
			*dest = *source;
			dest++;
		}

		source++;
	}

	/* NULL terminate list and update the package count */

	*dest = NULL;
	obj_desc->package.count = new_count;
}