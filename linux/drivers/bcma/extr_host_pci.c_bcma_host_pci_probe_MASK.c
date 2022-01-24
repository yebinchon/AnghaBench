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
typedef  int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  dev; TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; int /*<<< orphan*/  vendor; } ;
struct bcma_bus {int host_is_pcie2; int /*<<< orphan*/  mmio; struct pci_dev* host_pci; TYPE_2__ boardinfo; int /*<<< orphan*/ * ops; int /*<<< orphan*/  hosttype; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CORE_PCIE2 ; 
 int /*<<< orphan*/  BCMA_HOSTTYPE_PCI ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bcma_bus*) ; 
 int FUNC1 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_bus*,char*) ; 
 scalar_t__ FUNC3 (struct bcma_bus*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcma_host_pci_ops ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcma_bus*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct bcma_bus*) ; 
 struct bcma_bus* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int FUNC10 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_dev*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,struct bcma_bus*) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*,int,int) ; 

__attribute__((used)) static int FUNC20(struct pci_dev *dev,
			       const struct pci_device_id *id)
{
	struct bcma_bus *bus;
	int err = -ENOMEM;
	const char *name;
	u32 val;

	/* Alloc */
	bus = FUNC8(sizeof(*bus), GFP_KERNEL);
	if (!bus)
		goto out;

	/* Basic PCI configuration */
	err = FUNC10(dev);
	if (err)
		goto err_kfree_bus;

	name = FUNC6(&dev->dev);
	if (dev->driver && dev->driver->name)
		name = dev->driver->name;
	err = FUNC16(dev, name);
	if (err)
		goto err_pci_disable;
	FUNC18(dev);

	/* Disable the RETRY_TIMEOUT register (0x41) to keep
	 * PCI Tx retries from interfering with C3 CPU state */
	FUNC14(dev, 0x40, &val);
	if ((val & 0x0000ff00) != 0)
		FUNC19(dev, 0x40, val & 0xffff00ff);

	/* SSB needed additional powering up, do we have any AMBA PCI cards? */
	if (!FUNC13(dev)) {
		FUNC2(bus, "PCI card detected, they are not supported.\n");
		err = -ENXIO;
		goto err_pci_release_regions;
	}

	bus->dev = &dev->dev;

	/* Map MMIO */
	err = -ENOMEM;
	bus->mmio = FUNC11(dev, 0, ~0UL);
	if (!bus->mmio)
		goto err_pci_release_regions;

	/* Host specific */
	bus->host_pci = dev;
	bus->hosttype = BCMA_HOSTTYPE_PCI;
	bus->ops = &bcma_host_pci_ops;

	bus->boardinfo.vendor = bus->host_pci->subsystem_vendor;
	bus->boardinfo.type = bus->host_pci->subsystem_device;

	/* Initialize struct, detect chip */
	FUNC4(bus);

	/* Scan bus to find out generation of PCIe core */
	err = FUNC1(bus);
	if (err)
		goto err_pci_unmap_mmio;

	if (FUNC3(bus, BCMA_CORE_PCIE2))
		bus->host_is_pcie2 = true;

	/* Register */
	err = FUNC0(bus);
	if (err)
		goto err_unregister_cores;

	FUNC17(dev, bus);

out:
	return err;

err_unregister_cores:
	FUNC5(bus);
err_pci_unmap_mmio:
	FUNC12(dev, bus->mmio);
err_pci_release_regions:
	FUNC15(dev);
err_pci_disable:
	FUNC9(dev);
err_kfree_bus:
	FUNC7(bus);
	return err;
}