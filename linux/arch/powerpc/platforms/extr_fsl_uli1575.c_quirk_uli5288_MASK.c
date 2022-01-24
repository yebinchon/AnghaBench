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
 int /*<<< orphan*/  PCI_CLASS_REVISION ; 
 int PCI_CLASS_STORAGE_SATA_AHCI ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	unsigned char c;
	unsigned int d;

	if (!FUNC0())
		return;

	/* read/write lock */
	FUNC1(dev, 0x83, &c);
	FUNC3(dev, 0x83, c|0x80);

	FUNC2(dev, PCI_CLASS_REVISION, &d);
	d = (d & 0xff) | (PCI_CLASS_STORAGE_SATA_AHCI << 8);
	FUNC4(dev, PCI_CLASS_REVISION, d);

	/* restore lock */
	FUNC3(dev, 0x83, c);

	/* disable emulated PATA mode enabled */
	FUNC1(dev, 0x84, &c);
	FUNC3(dev, 0x84, c & ~0x01);
}