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
struct acpi_pci_id {int dummy; } ;
struct acpi_pci_device {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_pci_device**) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_pci_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_pci_id*,struct acpi_pci_device*) ; 
 int /*<<< orphan*/  hw_derive_pci_id ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

acpi_status
FUNC6(struct acpi_pci_id *pci_id,
		      acpi_handle root_pci_device, acpi_handle pci_region)
{
	acpi_status status;
	struct acpi_pci_device *list_head;

	FUNC0(hw_derive_pci_id);

	if (!pci_id) {
		FUNC5(AE_BAD_PARAMETER);
	}

	/* Build a list of PCI devices, from pci_region up to root_pci_device */

	status =
	    FUNC2(root_pci_device, pci_region, &list_head);
	if (FUNC1(status)) {

		/* Walk the list, updating the PCI device/function/bus numbers */

		status = FUNC4(pci_id, list_head);

		/* Delete the list */

		FUNC3(list_head);
	}

	FUNC5(status);
}