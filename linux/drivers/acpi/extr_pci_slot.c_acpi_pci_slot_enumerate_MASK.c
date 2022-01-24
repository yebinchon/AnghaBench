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
struct pci_bus {int /*<<< orphan*/  bridge; } ;
typedef  scalar_t__ acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pci_bus*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  register_slot ; 
 int /*<<< orphan*/  slot_list_lock ; 

void FUNC4(struct pci_bus *bus)
{
	acpi_handle handle = FUNC0(bus->bridge);

	if (handle) {
		FUNC2(&slot_list_lock);
		FUNC1(ACPI_TYPE_DEVICE, handle, 1,
				    register_slot, NULL, bus, NULL);
		FUNC3(&slot_list_lock);
	}
}