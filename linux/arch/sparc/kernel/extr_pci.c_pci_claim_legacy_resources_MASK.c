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
struct resource {char* name; int flags; } ;
struct pci_dev {int class; int /*<<< orphan*/  bus; } ;
struct pci_bus_region {int start; int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IORESOURCE_BUSY ; 
 int IORESOURCE_MEM ; 
 int PCI_CLASS_DISPLAY_VGA ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 struct resource* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (struct pci_dev*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,char*,struct resource*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct resource*,struct pci_bus_region*) ; 
 struct resource* FUNC5 (struct resource*,struct resource*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *dev)
{
	struct pci_bus_region region;
	struct resource *p, *root, *conflict;

	if ((dev->class >> 8) != PCI_CLASS_DISPLAY_VGA)
		return;

	p = FUNC1(sizeof(*p), GFP_KERNEL);
	if (!p)
		return;

	p->name = "Video RAM area";
	p->flags = IORESOURCE_MEM | IORESOURCE_BUSY;

	region.start = 0xa0000UL;
	region.end = region.start + 0x1ffffUL;
	FUNC4(dev->bus, p, &region);

	root = FUNC2(dev, p);
	if (!root) {
		FUNC3(dev, "can't claim VGA legacy %pR: no compatible bridge window\n", p);
		goto err;
	}

	conflict = FUNC5(root, p);
	if (conflict) {
		FUNC3(dev, "can't claim VGA legacy %pR: address conflict with %s %pR\n",
			 p, conflict->name, conflict);
		goto err;
	}

	FUNC3(dev, "VGA legacy framebuffer %pR\n", p);
	return;

err:
	FUNC0(p);
}