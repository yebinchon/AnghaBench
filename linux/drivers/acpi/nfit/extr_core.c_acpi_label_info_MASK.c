#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  union acpi_object {int dummy; } acpi_object ;
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 union acpi_object* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static union acpi_object *FUNC3(acpi_handle handle)
{
	acpi_status rc;
	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };

	rc = FUNC1(handle, "_LSI", NULL, &buf);
	if (FUNC0(rc))
		return NULL;
	return FUNC2(buf.pointer);
}