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
struct acpi_pci_device {scalar_t__ device; struct acpi_pci_device* next; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 struct acpi_pci_device* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_NO_MEMORY ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_pci_device*) ; 

__attribute__((used)) static acpi_status
FUNC4(acpi_handle root_pci_device,
		       acpi_handle pci_region,
		       struct acpi_pci_device **return_list_head)
{
	acpi_handle current_device;
	acpi_handle parent_device;
	acpi_status status;
	struct acpi_pci_device *list_element;

	/*
	 * Ascend namespace branch until the root_pci_device is reached, building
	 * a list of device nodes. Loop will exit when either the PCI device is
	 * found, or the root of the namespace is reached.
	 */
	*return_list_head = NULL;
	current_device = pci_region;
	while (1) {
		status = FUNC2(current_device, &parent_device);
		if (FUNC1(status)) {

			/* Must delete the list before exit */

			FUNC3(*return_list_head);
			return (status);
		}

		/* Finished when we reach the PCI root device (PNP0A03 or PNP0A08) */

		if (parent_device == root_pci_device) {
			return (AE_OK);
		}

		list_element = FUNC0(sizeof(struct acpi_pci_device));
		if (!list_element) {

			/* Must delete the list before exit */

			FUNC3(*return_list_head);
			return (AE_NO_MEMORY);
		}

		/* Put new element at the head of the list */

		list_element->next = *return_list_head;
		list_element->device = parent_device;
		*return_list_head = list_element;

		current_device = parent_device;
	}
}