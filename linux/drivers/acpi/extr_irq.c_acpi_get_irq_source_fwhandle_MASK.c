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
struct fwnode_handle {int dummy; } ;
struct acpi_resource_source {int /*<<< orphan*/  string_ptr; int /*<<< orphan*/  string_length; } ;
struct acpi_device {struct fwnode_handle fwnode; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 struct acpi_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct fwnode_handle* acpi_gsi_domain_id ; 

__attribute__((used)) static struct fwnode_handle *
FUNC5(const struct acpi_resource_source *source)
{
	struct fwnode_handle *result;
	struct acpi_device *device;
	acpi_handle handle;
	acpi_status status;

	if (!source->string_length)
		return acpi_gsi_domain_id;

	status = FUNC4(NULL, source->string_ptr, &handle);
	if (FUNC1(FUNC0(status)))
		return NULL;

	device = FUNC2(handle);
	if (FUNC1(!device))
		return NULL;

	result = &device->fwnode;
	FUNC3(device);
	return result;
}