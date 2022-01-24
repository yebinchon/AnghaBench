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
struct acpi_device_data {int dummy; } ;
struct acpi_device {struct acpi_device_data const data; } ;
struct acpi_data_node {struct acpi_device_data const data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fwnode_handle const*) ; 
 scalar_t__ FUNC1 (struct fwnode_handle const*) ; 
 struct acpi_data_node* FUNC2 (struct fwnode_handle const*) ; 
 struct acpi_device* FUNC3 (struct fwnode_handle const*) ; 

__attribute__((used)) static const struct acpi_device_data *
FUNC4(const struct fwnode_handle *fwnode)
{
	if (FUNC1(fwnode)) {
		const struct acpi_device *adev = FUNC3(fwnode);
		return &adev->data;
	} else if (FUNC0(fwnode)) {
		const struct acpi_data_node *dn = FUNC2(fwnode);
		return &dn->data;
	}
	return NULL;
}