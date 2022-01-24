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
struct pci_dev {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID_INTEL ; 
 struct pci_dev* FUNC0 (int /*<<< orphan*/ ,int,struct pci_dev*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pci_dev *FUNC3(int id)
{
	struct pci_dev *mc_dev = NULL;
	int phys_id, pkg;

	while (1) {
		mc_dev = FUNC0(PCI_VENDOR_ID_INTEL, 0x3451, mc_dev);
		if (!mc_dev)
			break;
		phys_id = FUNC2(mc_dev->bus);
		if (phys_id < 0)
			continue;
		pkg = FUNC1(phys_id);
		if (pkg < 0)
			continue;
		else if (pkg == id)
			break;
	}
	return mc_dev;
}