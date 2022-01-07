
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct bcma_drv_pcie2 {int reqsize; TYPE_1__* core; } ;
struct bcma_bus {struct pci_dev* host_pci; } ;
struct TYPE_2__ {struct bcma_bus* bus; } ;


 int bcma_err (struct bcma_bus*,char*,int) ;
 int pcie_set_readrq (struct pci_dev*,int ) ;

void bcma_core_pcie2_up(struct bcma_drv_pcie2 *pcie2)
{
 struct bcma_bus *bus = pcie2->core->bus;
 struct pci_dev *dev = bus->host_pci;
 int err;

 err = pcie_set_readrq(dev, pcie2->reqsize);
 if (err)
  bcma_err(bus, "Error setting PCI_EXP_DEVCTL_READRQ: %d\n", err);
}
