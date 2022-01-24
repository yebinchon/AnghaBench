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
struct list_head {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct acpi_buffer {int /*<<< orphan*/  pointer; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct acpi_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,union acpi_object const*,struct list_head*,struct fwnode_handle*) ; 

__attribute__((used)) static bool FUNC4(acpi_handle handle,
					const union acpi_object *link,
					struct list_head *list,
					struct fwnode_handle *parent)
{
	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER };
	acpi_status status;

	status = FUNC2(handle, NULL, NULL, &buf,
					    ACPI_TYPE_PACKAGE);
	if (FUNC0(status))
		return false;

	if (FUNC3(buf.pointer, handle, link, list,
					parent))
		return true;

	FUNC1(buf.pointer);
	return false;
}