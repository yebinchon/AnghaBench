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
typedef  int u16 ;
struct resource {int flags; scalar_t__ end; int /*<<< orphan*/  start; } ;
struct pci_dev {int class; struct resource* resource; } ;

/* Variables and functions */
 int EINVAL ; 
 int IORESOURCE_IO ; 
 int IORESOURCE_MEM ; 
 int PCI_BASE_CLASS_BRIDGE ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 

int FUNC5(struct pci_dev *dev, int mask)
{
	struct resource *r;
	u16 cmd, newcmd;
	int idx;

	FUNC1(dev, PCI_COMMAND, &cmd);
	newcmd = cmd;

	for (idx = 0; idx < 6; idx++) {
		/* Only set up the requested stuff */
		if (!(mask & (1 << idx)))
			continue;

		r = dev->resource + idx;
		if (!r->start && r->end) {
			FUNC3("PCI: Device %s not available because of resource collisions\n",
				FUNC0(dev));
			return -EINVAL;
		}
		if (r->flags & IORESOURCE_IO)
			newcmd |= PCI_COMMAND_IO;
		if (r->flags & IORESOURCE_MEM)
			newcmd |= PCI_COMMAND_MEMORY;
	}

	/*
	 * Bridges (eg, cardbus bridges) need to be fully enabled
	 */
	if ((dev->class >> 16) == PCI_BASE_CLASS_BRIDGE)
		newcmd |= PCI_COMMAND_IO | PCI_COMMAND_MEMORY;


	if (newcmd != cmd) {
		FUNC4("PCI: enabling device %s (0x%04x -> 0x%04x)\n",
			FUNC0(dev), cmd, newcmd);
		FUNC2(dev, PCI_COMMAND, newcmd);
	}
	return 0;
}