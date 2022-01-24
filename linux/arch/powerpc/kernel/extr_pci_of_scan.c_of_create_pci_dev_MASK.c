#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/  parent; int /*<<< orphan*/  of_node; } ;
struct pci_dev {int devfn; int dma_mask; scalar_t__ irq; int /*<<< orphan*/  rom_base_reg; int /*<<< orphan*/  hdr_type; int /*<<< orphan*/  error_state; int /*<<< orphan*/  current_state; void* revision; void* class; TYPE_1__* bus; TYPE_2__ dev; int /*<<< orphan*/  cfg_size; void* subsystem_device; void* subsystem_vendor; void* device; void* vendor; scalar_t__ needs_freset; scalar_t__ multifunction; } ;
struct pci_bus {int /*<<< orphan*/  bridge; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE_BRIDGE ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE_CARDBUS ; 
 int /*<<< orphan*/  PCI_HEADER_TYPE_NORMAL ; 
 int /*<<< orphan*/  PCI_ROM_ADDRESS ; 
 int /*<<< orphan*/  PCI_ROM_ADDRESS1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device_node*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*,struct pci_dev*) ; 
 struct pci_dev* FUNC8 (struct pci_bus*) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  pci_channel_io_normal ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct pci_dev*) ; 
 int /*<<< orphan*/  pci_fixup_early ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*) ; 

struct pci_dev *FUNC17(struct device_node *node,
				 struct pci_bus *bus, int devfn)
{
	struct pci_dev *dev;

	dev = FUNC8(bus);
	if (!dev)
		return NULL;

	FUNC14("    create device, devfn: %x, type: %s\n", devfn,
		 FUNC5(node));

	dev->dev.of_node = FUNC4(node);
	dev->dev.parent = bus->bridge;
	dev->dev.bus = &pci_bus_type;
	dev->devfn = devfn;
	dev->multifunction = 0;		/* maybe a lie? */
	dev->needs_freset = 0;		/* pcie fundamental reset required */
	FUNC16(dev);

	FUNC10(dev);
	dev->vendor = FUNC3(node, "vendor-id", 0xffff);
	dev->device = FUNC3(node, "device-id", 0xffff);
	dev->subsystem_vendor = FUNC3(node, "subsystem-vendor-id", 0);
	dev->subsystem_device = FUNC3(node, "subsystem-id", 0);

	dev->cfg_size = FUNC9(dev);

	FUNC2(&dev->dev, "%04x:%02x:%02x.%d", FUNC12(bus),
		dev->bus->number, FUNC1(devfn), FUNC0(devfn));
	dev->class = FUNC3(node, "class-code", 0);
	dev->revision = FUNC3(node, "revision-id", 0);

	FUNC14("    class: 0x%x\n", dev->class);
	FUNC14("    revision: 0x%x\n", dev->revision);

	dev->current_state = PCI_UNKNOWN;	/* unknown power state */
	dev->error_state = pci_channel_io_normal;
	dev->dma_mask = 0xffffffff;

	/* Early fixups, before probing the BARs */
	FUNC13(pci_fixup_early, dev);

	if (FUNC6(node, "pci") || FUNC6(node, "pciex")) {
		/* a PCI-PCI bridge */
		dev->hdr_type = PCI_HEADER_TYPE_BRIDGE;
		dev->rom_base_reg = PCI_ROM_ADDRESS1;
		FUNC15(dev);
	} else if (FUNC6(node, "cardbus")) {
		dev->hdr_type = PCI_HEADER_TYPE_CARDBUS;
	} else {
		dev->hdr_type = PCI_HEADER_TYPE_NORMAL;
		dev->rom_base_reg = PCI_ROM_ADDRESS;
		/* Maybe do a default OF mapping here */
		dev->irq = 0;
	}

	FUNC7(node, dev);

	FUNC14("    adding to system ...\n");

	FUNC11(dev, bus);

	return dev;
}