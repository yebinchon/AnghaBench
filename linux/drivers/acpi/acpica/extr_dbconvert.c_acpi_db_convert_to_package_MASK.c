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
struct TYPE_2__ {int count; union acpi_object* elements; } ;
union acpi_object {TYPE_1__ package; int /*<<< orphan*/  type; } ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_object_type ;

/* Variables and functions */
 union acpi_object* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_OK ; 
 int DB_DEFAULT_PKG_ELEMENTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,union acpi_object*) ; 
 int /*<<< orphan*/  FUNC4 (int,union acpi_object*) ; 
 char* FUNC5 (char*,char**,int /*<<< orphan*/ *) ; 

acpi_status FUNC6(char *string, union acpi_object *object)
{
	char *this;
	char *next;
	u32 i;
	acpi_object_type type;
	union acpi_object *elements;
	acpi_status status;

	elements =
	    FUNC0(DB_DEFAULT_PKG_ELEMENTS *
				 sizeof(union acpi_object));

	this = string;
	for (i = 0; i < (DB_DEFAULT_PKG_ELEMENTS - 1); i++) {
		this = FUNC5(this, &next, &type);
		if (!this) {
			break;
		}

		/* Recursive call to convert each package element */

		status = FUNC3(type, this, &elements[i]);
		if (FUNC1(status)) {
			FUNC4(i + 1, elements);
			FUNC2(elements);
			return (status);
		}

		this = next;
	}

	object->type = ACPI_TYPE_PACKAGE;
	object->package.count = i;
	object->package.elements = elements;
	return (AE_OK);
}