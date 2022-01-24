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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {scalar_t__ number; } ;

/* Variables and functions */
 int PCI_BUS_ENABLED ; 
 int PCI_DEVICE_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bcm1480ht_bus_status ; 

__attribute__((used)) static int FUNC1(struct pci_bus *bus, int devfn)
{
	u32 devno;

	if (!(bcm1480ht_bus_status & (PCI_BUS_ENABLED | PCI_DEVICE_MODE)))
		return 0;

	if (bus->number == 0) {
		devno = FUNC0(devfn);
		if (bcm1480ht_bus_status & PCI_DEVICE_MODE)
			return 0;
	}
	return 1;
}