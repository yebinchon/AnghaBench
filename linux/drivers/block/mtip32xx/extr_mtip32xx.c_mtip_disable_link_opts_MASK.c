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
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct driver_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CAP_ID_EXP ; 
 scalar_t__ PCI_EXP_DEVCTL ; 
 unsigned short PCI_EXP_DEVCTL_NOSNOOP_EN ; 
 unsigned short PCI_EXP_DEVCTL_RELAX_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,unsigned short*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,scalar_t__,unsigned short) ; 

__attribute__((used)) static void FUNC4(struct driver_data *dd, struct pci_dev *pdev)
{
	int pos;
	unsigned short pcie_dev_ctrl;

	pos = FUNC1(pdev, PCI_CAP_ID_EXP);
	if (pos) {
		FUNC2(pdev,
			pos + PCI_EXP_DEVCTL,
			&pcie_dev_ctrl);
		if (pcie_dev_ctrl & (1 << 11) ||
		    pcie_dev_ctrl & (1 << 4)) {
			FUNC0(&dd->pdev->dev,
				"Disabling ERO/No-Snoop on bridge device %04x:%04x\n",
					pdev->vendor, pdev->device);
			pcie_dev_ctrl &= ~(PCI_EXP_DEVCTL_NOSNOOP_EN |
						PCI_EXP_DEVCTL_RELAX_EN);
			FUNC3(pdev,
				pos + PCI_EXP_DEVCTL,
				pcie_dev_ctrl);
		}
	}
}