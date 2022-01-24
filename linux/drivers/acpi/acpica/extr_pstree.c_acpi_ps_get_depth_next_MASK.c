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
struct TYPE_2__ {union acpi_parse_object* parent; union acpi_parse_object* next; } ;
union acpi_parse_object {TYPE_1__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (union acpi_parse_object*) ; 
 union acpi_parse_object* FUNC2 (union acpi_parse_object*,int /*<<< orphan*/ ) ; 

union acpi_parse_object *FUNC3(union acpi_parse_object *origin,
						union acpi_parse_object *op)
{
	union acpi_parse_object *next = NULL;
	union acpi_parse_object *parent;
	union acpi_parse_object *arg;

	FUNC0();

	if (!op) {
		return (NULL);
	}

	/* Look for an argument or child */

	next = FUNC2(op, 0);
	if (next) {
		FUNC1(next);
		return (next);
	}

	/* Look for a sibling */

	next = op->common.next;
	if (next) {
		FUNC1(next);
		return (next);
	}

	/* Look for a sibling of parent */

	parent = op->common.parent;

	while (parent) {
		arg = FUNC2(parent, 0);
		while (arg && (arg != origin) && (arg != op)) {

			FUNC1(arg);
			arg = arg->common.next;
		}

		if (arg == origin) {

			/* Reached parent of origin, end search */

			return (NULL);
		}

		if (parent->common.next) {

			/* Found sibling of parent */

			FUNC1(parent->common.next);
			return (parent->common.next);
		}

		op = parent;
		parent = parent->common.parent;
	}

	FUNC1(next);
	return (next);
}