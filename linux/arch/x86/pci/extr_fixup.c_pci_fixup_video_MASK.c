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
struct resource {int start; int end; int flags; scalar_t__ parent; } ;
struct pci_dev {int /*<<< orphan*/  dev; struct resource* resource; struct pci_bus* bus; } ;
struct pci_bus {struct pci_bus* parent; struct pci_dev* self; } ;

/* Variables and functions */
 int IORESOURCE_MEM ; 
 int IORESOURCE_PCI_FIXED ; 
 int IORESOURCE_ROM_SHADOW ; 
 int /*<<< orphan*/  PCI_BRIDGE_CONTROL ; 
 int PCI_BRIDGE_CTL_VGA ; 
 int /*<<< orphan*/  PCI_COMMAND ; 
 int PCI_COMMAND_IO ; 
 int PCI_COMMAND_MEMORY ; 
 size_t PCI_ROM_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 
 struct pci_dev* FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct pci_dev *bridge;
	struct pci_bus *bus;
	u16 config;
	struct resource *res;

	/* Is VGA routed to us? */
	bus = pdev->bus;
	while (bus) {
		bridge = bus->self;

		/*
		 * From information provided by
		 * "David Miller" <davem@davemloft.net>
		 * The bridge control register is valid for PCI header
		 * type BRIDGE, or CARDBUS. Host to PCI controllers use
		 * PCI header type NORMAL.
		 */
		if (bridge && (FUNC2(bridge))) {
			FUNC3(bridge, PCI_BRIDGE_CONTROL,
						&config);
			if (!(config & PCI_BRIDGE_CTL_VGA))
				return;
		}
		bus = bus->parent;
	}
	if (!FUNC5() || pdev == FUNC5()) {
		FUNC3(pdev, PCI_COMMAND, &config);
		if (config & (PCI_COMMAND_IO | PCI_COMMAND_MEMORY)) {
			res = &pdev->resource[PCI_ROM_RESOURCE];

			FUNC1(pdev);
			if (res->parent)
				FUNC4(res);

			res->start = 0xC0000;
			res->end = res->start + 0x20000 - 1;
			res->flags = IORESOURCE_MEM | IORESOURCE_ROM_SHADOW |
				     IORESOURCE_PCI_FIXED;
			FUNC0(&pdev->dev, "Video device with shadowed ROM at %pR\n",
				 res);
		}
	}
}