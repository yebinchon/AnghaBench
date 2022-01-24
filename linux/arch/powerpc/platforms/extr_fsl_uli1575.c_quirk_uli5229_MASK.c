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

/* Variables and functions */
 int PCI_COMMAND ; 
 unsigned short PCI_COMMAND_INTX_DISABLE ; 
 unsigned short PCI_COMMAND_IO ; 
 unsigned short PCI_COMMAND_MASTER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned short*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned short) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *dev)
{
	unsigned short temp;

	if (!FUNC0())
		return;

	FUNC2(dev, PCI_COMMAND, PCI_COMMAND_INTX_DISABLE |
		PCI_COMMAND_MASTER | PCI_COMMAND_IO);

	/* Enable Native IRQ 14/15 */
	FUNC1(dev, 0x4a, &temp);
	FUNC2(dev, 0x4a, temp | 0x1000);
}