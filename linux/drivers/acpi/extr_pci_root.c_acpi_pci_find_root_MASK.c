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
struct acpi_pci_root {int dummy; } ;
struct acpi_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct acpi_device**) ; 
 struct acpi_pci_root* FUNC1 (struct acpi_device*) ; 
 scalar_t__ FUNC2 (struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  root_device_ids ; 

struct acpi_pci_root *FUNC3(acpi_handle handle)
{
	struct acpi_pci_root *root;
	struct acpi_device *device;

	if (FUNC0(handle, &device) ||
	    FUNC2(device, root_device_ids))
		return NULL;

	root = FUNC1(device);

	return root;
}