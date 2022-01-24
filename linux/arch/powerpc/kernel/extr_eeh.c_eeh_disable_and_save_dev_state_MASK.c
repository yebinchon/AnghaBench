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
struct pci_dev {int dummy; } ;
struct eeh_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_COMMAND ; 
 int /*<<< orphan*/  PCI_COMMAND_INTX_DISABLE ; 
 int /*<<< orphan*/  PCI_D0 ; 
 struct pci_dev* FUNC0 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct eeh_dev *edev,
					    void *userdata)
{
	struct pci_dev *pdev = FUNC0(edev);
	struct pci_dev *dev = userdata;

	/*
	 * The caller should have disabled and saved the
	 * state for the specified device
	 */
	if (!pdev || pdev == dev)
		return;

	/* Ensure we have D0 power state */
	FUNC2(pdev, PCI_D0);

	/* Save device state */
	FUNC1(pdev);

	/*
	 * Disable device to avoid any DMA traffic and
	 * interrupt from the device
	 */
	FUNC3(pdev, PCI_COMMAND, PCI_COMMAND_INTX_DISABLE);
}