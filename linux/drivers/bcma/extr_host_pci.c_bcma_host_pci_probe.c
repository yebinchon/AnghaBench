
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int subsystem_device; int subsystem_vendor; int dev; TYPE_1__* driver; } ;
struct TYPE_4__ {int type; int vendor; } ;
struct bcma_bus {int host_is_pcie2; int mmio; struct pci_dev* host_pci; TYPE_2__ boardinfo; int * ops; int hosttype; int * dev; } ;
struct TYPE_3__ {char* name; } ;


 int BCMA_CORE_PCIE2 ;
 int BCMA_HOSTTYPE_PCI ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int bcma_bus_register (struct bcma_bus*) ;
 int bcma_bus_scan (struct bcma_bus*) ;
 int bcma_err (struct bcma_bus*,char*) ;
 scalar_t__ bcma_find_core (struct bcma_bus*,int ) ;
 int bcma_host_pci_ops ;
 int bcma_init_bus (struct bcma_bus*) ;
 int bcma_unregister_cores (struct bcma_bus*) ;
 char* dev_name (int *) ;
 int kfree (struct bcma_bus*) ;
 struct bcma_bus* kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,unsigned long) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_is_pcie (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,char const*) ;
 int pci_set_drvdata (struct pci_dev*,struct bcma_bus*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;

__attribute__((used)) static int bcma_host_pci_probe(struct pci_dev *dev,
          const struct pci_device_id *id)
{
 struct bcma_bus *bus;
 int err = -ENOMEM;
 const char *name;
 u32 val;


 bus = kzalloc(sizeof(*bus), GFP_KERNEL);
 if (!bus)
  goto out;


 err = pci_enable_device(dev);
 if (err)
  goto err_kfree_bus;

 name = dev_name(&dev->dev);
 if (dev->driver && dev->driver->name)
  name = dev->driver->name;
 err = pci_request_regions(dev, name);
 if (err)
  goto err_pci_disable;
 pci_set_master(dev);



 pci_read_config_dword(dev, 0x40, &val);
 if ((val & 0x0000ff00) != 0)
  pci_write_config_dword(dev, 0x40, val & 0xffff00ff);


 if (!pci_is_pcie(dev)) {
  bcma_err(bus, "PCI card detected, they are not supported.\n");
  err = -ENXIO;
  goto err_pci_release_regions;
 }

 bus->dev = &dev->dev;


 err = -ENOMEM;
 bus->mmio = pci_iomap(dev, 0, ~0UL);
 if (!bus->mmio)
  goto err_pci_release_regions;


 bus->host_pci = dev;
 bus->hosttype = BCMA_HOSTTYPE_PCI;
 bus->ops = &bcma_host_pci_ops;

 bus->boardinfo.vendor = bus->host_pci->subsystem_vendor;
 bus->boardinfo.type = bus->host_pci->subsystem_device;


 bcma_init_bus(bus);


 err = bcma_bus_scan(bus);
 if (err)
  goto err_pci_unmap_mmio;

 if (bcma_find_core(bus, BCMA_CORE_PCIE2))
  bus->host_is_pcie2 = 1;


 err = bcma_bus_register(bus);
 if (err)
  goto err_unregister_cores;

 pci_set_drvdata(dev, bus);

out:
 return err;

err_unregister_cores:
 bcma_unregister_cores(bus);
err_pci_unmap_mmio:
 pci_iounmap(dev, bus->mmio);
err_pci_release_regions:
 pci_release_regions(dev);
err_pci_disable:
 pci_disable_device(dev);
err_kfree_bus:
 kfree(bus);
 return err;
}
