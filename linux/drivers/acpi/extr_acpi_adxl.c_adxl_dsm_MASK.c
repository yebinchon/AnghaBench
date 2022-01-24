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
struct TYPE_4__ {int count; union acpi_object* elements; } ;
struct TYPE_3__ {int value; } ;
union acpi_object {int type; TYPE_2__ package; TYPE_1__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union acpi_object*) ; 
 int ACPI_TYPE_INTEGER ; 
 int ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  ADXL_REVISION ; 
 union acpi_object* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,union acpi_object*,int) ; 
 int /*<<< orphan*/  adxl_guid ; 
 int /*<<< orphan*/  handle ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static union acpi_object *FUNC3(int cmd, union acpi_object argv[])
{
	union acpi_object *obj, *o;

	obj = FUNC1(handle, &adxl_guid, ADXL_REVISION,
				      cmd, argv, ACPI_TYPE_PACKAGE);
	if (!obj) {
		FUNC2("DSM call failed for cmd=%d\n", cmd);
		return NULL;
	}

	if (obj->package.count != 2) {
		FUNC2("Bad pkg count %d\n", obj->package.count);
		goto err;
	}

	o = obj->package.elements;
	if (o->type != ACPI_TYPE_INTEGER) {
		FUNC2("Bad 1st element type %d\n", o->type);
		goto err;
	}
	if (o->integer.value) {
		FUNC2("Bad ret val %llu\n", o->integer.value);
		goto err;
	}

	o = obj->package.elements + 1;
	if (o->type != ACPI_TYPE_PACKAGE) {
		FUNC2("Bad 2nd element type %d\n", o->type);
		goto err;
	}
	return obj;

err:
	FUNC0(obj);
	return NULL;
}