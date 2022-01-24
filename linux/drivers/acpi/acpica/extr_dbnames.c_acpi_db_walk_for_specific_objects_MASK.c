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
typedef  int /*<<< orphan*/  u32 ;
struct acpi_walk_info {int /*<<< orphan*/  count; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  char* acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_LOCAL_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct acpi_walk_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static acpi_status
FUNC5(acpi_handle obj_handle,
				  u32 nesting_level,
				  void *context, void **return_value)
{
	struct acpi_walk_info *info = (struct acpi_walk_info *)context;
	struct acpi_buffer buffer;
	acpi_status status;

	info->count++;

	/* Get and display the full pathname to this object */

	buffer.length = ACPI_ALLOCATE_LOCAL_BUFFER;
	status = FUNC3(obj_handle, &buffer, TRUE);
	if (FUNC0(status)) {
		FUNC4("Could Not get pathname for object %p\n",
			       obj_handle);
		return (AE_OK);
	}

	FUNC4("%32s", (char *)buffer.pointer);
	FUNC1(buffer.pointer);

	/* Dump short info about the object */

	(void)FUNC2(obj_handle, nesting_level, info, NULL);
	return (AE_OK);
}