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
struct resource {int flags; } ;
struct pci_dev {struct resource* resource; } ;
struct fb_info {struct device* device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int IORESOURCE_ROM_SHADOW ; 
 int PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 struct pci_dev* FUNC1 (struct device*) ; 
 struct pci_dev* FUNC2 () ; 

int FUNC3(struct fb_info *info)
{
	struct device *device = info->device;
	struct pci_dev *default_device = FUNC2();
	struct pci_dev *pci_dev;
	struct resource *res;

	if (!device || !FUNC0(device))
		return 0;

	pci_dev = FUNC1(device);

	if (default_device) {
		if (pci_dev == default_device)
			return 1;
		return 0;
	}

	res = pci_dev->resource + PCI_ROM_RESOURCE;

	if (res->flags & IORESOURCE_ROM_SHADOW)
		return 1;

	return 0;
}