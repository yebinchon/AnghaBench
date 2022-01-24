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
struct pci_dev {scalar_t__ vendor; scalar_t__ device; } ;

/* Variables and functions */
 int PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int PCI_COMMAND_PARITY ; 
 scalar_t__ PCI_DEVICE_ID_ITE_8212 ; 
 int PCI_LATENCY_TIMER ; 
 scalar_t__ PCI_VENDOR_ID_ITE ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev)
{
	/* Neither the RDC nor the IT8211 */
	if (pdev->vendor != PCI_VENDOR_ID_ITE ||
			pdev->device != PCI_DEVICE_ID_ITE_8212)
			return;

	/* Reset local CPU, and set BIOS not ready */
	FUNC0(pdev, 0x5E, 0x01);

	/* Set to bypass mode, and reset PCI bus */
	FUNC0(pdev, 0x50, 0x00);
	FUNC2(pdev, PCI_COMMAND,
			      PCI_COMMAND_PARITY | PCI_COMMAND_IO |
			      PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);
	FUNC2(pdev, 0x40, 0xA0F3);

	FUNC1(pdev,0x4C, 0x02040204);
	FUNC0(pdev, 0x42, 0x36);
	FUNC0(pdev, PCI_LATENCY_TIMER, 0x20);
}