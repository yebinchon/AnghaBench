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
struct pci_bus {scalar_t__ self; int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_PROBE_ONLY ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct pci_bus *bus)
{
	FUNC9("PCI: Finishing adding to hotplug bus %04x:%02x\n",
		 FUNC5(bus), bus->number);

	/* Allocate bus and devices resources */
	FUNC7(bus);
	FUNC8(bus);
	if (!FUNC6(PCI_PROBE_ONLY)) {
		if (bus->self)
			FUNC2(bus->self);
		else
			FUNC3(bus);
	}

	/* Fixup EEH */
	FUNC0(bus);

	/* Add new devices to global lists.  Register in proc, sysfs. */
	FUNC4(bus);

	/* sysfs files should only be added after devices are added */
	FUNC1(bus);
}