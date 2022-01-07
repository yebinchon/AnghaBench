
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_4__ {int * parent; } ;
struct pci_host_bridge {struct pci_bus* bus; int map_irq; int swizzle_irq; int ops; scalar_t__ busnr; struct leon_pci_info* sysdata; TYPE_1__ dev; int windows; } ;
struct pci_bus {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ start; } ;
struct leon_pci_info {int map_irq; int ops; TYPE_3__ busn; TYPE_3__ mem_space; TYPE_2__ io_space; } ;


 int IORESOURCE_BUS ;
 int LIST_HEAD (int ) ;
 int list_splice_init (int *,int *) ;
 int pci_add_resource (int *,TYPE_3__*) ;
 int pci_add_resource_offset (int *,TYPE_2__*,scalar_t__) ;
 struct pci_host_bridge* pci_alloc_host_bridge (int ) ;
 int pci_assign_unassigned_resources () ;
 int pci_bus_add_devices (struct pci_bus*) ;
 int pci_common_swizzle ;
 int pci_free_host_bridge (struct pci_host_bridge*) ;
 int pci_scan_root_bus_bridge (struct pci_host_bridge*) ;
 int resources ;

void leon_pci_init(struct platform_device *ofdev, struct leon_pci_info *info)
{
 LIST_HEAD(resources);
 struct pci_bus *root_bus;
 struct pci_host_bridge *bridge;
 int ret;

 bridge = pci_alloc_host_bridge(0);
 if (!bridge)
  return;

 pci_add_resource_offset(&resources, &info->io_space,
    info->io_space.start - 0x1000);
 pci_add_resource(&resources, &info->mem_space);
 info->busn.flags = IORESOURCE_BUS;
 pci_add_resource(&resources, &info->busn);

 list_splice_init(&resources, &bridge->windows);
 bridge->dev.parent = &ofdev->dev;
 bridge->sysdata = info;
 bridge->busnr = 0;
 bridge->ops = info->ops;
 bridge->swizzle_irq = pci_common_swizzle;
 bridge->map_irq = info->map_irq;

 ret = pci_scan_root_bus_bridge(bridge);
 if (ret) {
  pci_free_host_bridge(bridge);
  return;
 }

 root_bus = bridge->bus;


 pci_assign_unassigned_resources();
 pci_bus_add_devices(root_bus);
}
