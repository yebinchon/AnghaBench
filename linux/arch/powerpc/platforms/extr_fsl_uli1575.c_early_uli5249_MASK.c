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
struct pci_dev {int class; } ;

/* Variables and functions */
 int PCI_CLASS_PROG ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MASTER ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *dev)
{
	unsigned char temp;

	if (!FUNC0())
		return;

	FUNC3(dev, PCI_COMMAND, PCI_COMMAND_IO |
		 PCI_COMMAND_MEMORY | PCI_COMMAND_MASTER);

	/* read/write lock */
	FUNC1(dev, 0x7c, &temp);
	FUNC2(dev, 0x7c, 0x80);

	/* set as P2P bridge */
	FUNC2(dev, PCI_CLASS_PROG, 0x01);
	dev->class |= 0x1;

	/* restore lock */
	FUNC2(dev, 0x7c, temp);
}