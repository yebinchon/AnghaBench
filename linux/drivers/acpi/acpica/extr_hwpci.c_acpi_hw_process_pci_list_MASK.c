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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct acpi_pci_id {int /*<<< orphan*/  function; int /*<<< orphan*/  device; int /*<<< orphan*/  bus; int /*<<< orphan*/  segment; } ;
struct acpi_pci_device {struct acpi_pci_device* next; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_OPREGION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_pci_id*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw_process_pci_list ; 

__attribute__((used)) static acpi_status
FUNC4(struct acpi_pci_id *pci_id,
			 struct acpi_pci_device *list_head)
{
	acpi_status status = AE_OK;
	struct acpi_pci_device *info;
	u16 bus_number;
	u8 is_bridge = TRUE;

	FUNC2(hw_process_pci_list);

	FUNC0((ACPI_DB_OPREGION,
			  "Input PciId:  Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X\n",
			  pci_id->segment, pci_id->bus, pci_id->device,
			  pci_id->function));

	bus_number = pci_id->bus;

	/*
	 * Descend down the namespace tree, collecting PCI device, function,
	 * and bus numbers. bus_number is only important for PCI bridges.
	 * Algorithm: As we descend the tree, use the last valid PCI device,
	 * function, and bus numbers that are discovered, and assign them
	 * to the PCI ID for the target device.
	 */
	info = list_head;
	while (info) {
		status = FUNC3(pci_id, info->device,
						     &bus_number, &is_bridge);
		if (FUNC1(status)) {
			return (status);
		}

		info = info->next;
	}

	FUNC0((ACPI_DB_OPREGION,
			  "Output PciId: Seg %4.4X Bus %4.4X Dev %4.4X Func %4.4X "
			  "Status %X BusNumber %X IsBridge %X\n",
			  pci_id->segment, pci_id->bus, pci_id->device,
			  pci_id->function, status, bus_number, is_bridge));

	return (AE_OK);
}