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
struct pci_bus {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 

void FUNC3(struct pci_bus *bus)
{
	/* When called from the generic PCI probe, read PCI<->PCI bridge
	 * bases. This is -not- called when generating the PCI tree from
	 * the OF device-tree.
	 */
	FUNC0(bus);

	/* Now fixup the bus bus */
	FUNC2(bus);

	/* Now fixup devices on that bus */
	FUNC1(bus);
}