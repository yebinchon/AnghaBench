
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; TYPE_1__* resource; TYPE_2__* bus; scalar_t__ devfn; } ;
struct pci_controller {int dn; } ;
struct TYPE_4__ {scalar_t__ self; } ;
struct TYPE_3__ {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;


 int DEVICE_COUNT_RESOURCE ;
 int dev_info (int *,char*,int ) ;
 int of_match_node (int ,int ) ;
 struct pci_controller* pci_bus_to_host (TYPE_2__*) ;
 int pci_name (struct pci_dev*) ;
 int xilinx_pci_match ;

__attribute__((used)) static void xilinx_pci_fixup_bridge(struct pci_dev *dev)
{
 struct pci_controller *hose;
 int i;

 if (dev->devfn || dev->bus->self)
  return;

 hose = pci_bus_to_host(dev->bus);
 if (!hose)
  return;

 if (!of_match_node(xilinx_pci_match, hose->dn))
  return;




 for (i = 0; i < DEVICE_COUNT_RESOURCE; i++) {
  dev->resource[i].start = 0;
  dev->resource[i].end = 0;
  dev->resource[i].flags = 0;
 }

 dev_info(&dev->dev, "Hiding Xilinx plb-pci host bridge resources %s\n",
   pci_name(dev));
}
