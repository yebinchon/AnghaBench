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
struct pci_bus {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int PCI_ASSIGN_ROMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int pci_probe ; 
 int /*<<< orphan*/  FUNC1 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*) ; 

void FUNC4(struct pci_bus *bus)
{
	FUNC0(KERN_DEBUG, &bus->dev, "Allocating resources\n");

	FUNC1(bus);

	FUNC2(bus, 0);
	FUNC2(bus, 1);

	if (!(pci_probe & PCI_ASSIGN_ROMS))
		FUNC3(bus);
}