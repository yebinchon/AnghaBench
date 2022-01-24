#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {TYPE_1__* bus; } ;
struct pci2phy_map {scalar_t__* pbus_to_physid; } ;
struct TYPE_2__ {int number; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 struct pci2phy_map* FUNC0 (int) ; 
 int /*<<< orphan*/  pci2phy_map_lock ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (TYPE_1__*) ; 
 struct pci_dev* FUNC3 (int /*<<< orphan*/ ,int,struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(int devid)
{
	struct pci_dev *dev = NULL;
	struct pci2phy_map *map;
	int bus, segment;

	dev = FUNC3(PCI_VENDOR_ID_INTEL, devid, dev);
	if (!dev)
		return -ENOTTY;

	bus = dev->bus->number;
	segment = FUNC2(dev->bus);

	FUNC4(&pci2phy_map_lock);
	map = FUNC0(segment);
	if (!map) {
		FUNC5(&pci2phy_map_lock);
		FUNC1(dev);
		return -ENOMEM;
	}
	map->pbus_to_physid[bus] = 0;
	FUNC5(&pci2phy_map_lock);

	FUNC1(dev);

	return 0;
}