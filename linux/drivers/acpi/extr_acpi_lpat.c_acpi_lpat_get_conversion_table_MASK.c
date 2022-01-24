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
struct TYPE_3__ {scalar_t__ value; } ;
union acpi_object {scalar_t__ type; TYPE_2__ package; TYPE_1__ integer; } ;
struct acpi_lpat_conversion_table {int lpat_count; struct acpi_lpat* lpat; } ;
struct acpi_lpat {int dummy; } ;
struct acpi_buffer {int* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 struct acpi_lpat_conversion_table* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct acpi_lpat_conversion_table *FUNC5(acpi_handle
								  handle)
{
	struct acpi_lpat_conversion_table *lpat_table = NULL;
	struct acpi_buffer buffer = { &ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj_p, *obj_e;
	int *lpat, i;
	acpi_status status;

	status = FUNC1(handle, "LPAT", NULL, &buffer);
	if (FUNC0(status))
		return NULL;

	obj_p = (union acpi_object *)buffer.pointer;
	if (!obj_p || (obj_p->type != ACPI_TYPE_PACKAGE) ||
	    (obj_p->package.count % 2) || (obj_p->package.count < 4))
		goto out;

	lpat = FUNC2(obj_p->package.count, sizeof(int), GFP_KERNEL);
	if (!lpat)
		goto out;

	for (i = 0; i < obj_p->package.count; i++) {
		obj_e = &obj_p->package.elements[i];
		if (obj_e->type != ACPI_TYPE_INTEGER) {
			FUNC3(lpat);
			goto out;
		}
		lpat[i] = (s64)obj_e->integer.value;
	}

	lpat_table = FUNC4(sizeof(*lpat_table), GFP_KERNEL);
	if (!lpat_table) {
		FUNC3(lpat);
		goto out;
	}

	lpat_table->lpat = (struct acpi_lpat *)lpat;
	lpat_table->lpat_count = obj_p->package.count / 2;

out:
	FUNC3(buffer.pointer);
	return lpat_table;
}