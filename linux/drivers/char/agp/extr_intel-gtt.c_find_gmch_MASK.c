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
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  devfn; } ;
struct TYPE_2__ {struct pci_dev* pcidev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 TYPE_1__ intel_private ; 
 struct pci_dev* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_dev*) ; 

__attribute__((used)) static int FUNC2(u16 device)
{
	struct pci_dev *gmch_device;

	gmch_device = FUNC1(PCI_VENDOR_ID_INTEL, device, NULL);
	if (gmch_device && FUNC0(gmch_device->devfn) != 0) {
		gmch_device = FUNC1(PCI_VENDOR_ID_INTEL,
					     device, gmch_device);
	}

	if (!gmch_device)
		return 0;

	intel_private.pcidev = gmch_device;
	return 1;
}