
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int dma_offset; } ;
struct TYPE_8__ {TYPE_2__ archdata; } ;
struct pci_dev {int bus; TYPE_3__ dev; } ;
struct TYPE_6__ {int (* dma_dev_setup ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;
struct TYPE_9__ {int (* pci_irq_fixup ) (struct pci_dev*) ;} ;


 int PCI_DRAM_OFFSET ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_dma_ops ;
 int pci_read_irq_line (struct pci_dev*) ;
 int pcibus_to_node (int ) ;
 TYPE_5__ ppc_md ;
 int set_dev_node (TYPE_3__*,int ) ;
 int set_dma_ops (TYPE_3__*,int ) ;
 int stub1 (struct pci_dev*) ;
 int stub2 (struct pci_dev*) ;

__attribute__((used)) static void pcibios_setup_device(struct pci_dev *dev)
{
 struct pci_controller *phb;



 set_dev_node(&dev->dev, pcibus_to_node(dev->bus));


 set_dma_ops(&dev->dev, pci_dma_ops);
 dev->dev.archdata.dma_offset = PCI_DRAM_OFFSET;


 phb = pci_bus_to_host(dev->bus);
 if (phb->controller_ops.dma_dev_setup)
  phb->controller_ops.dma_dev_setup(dev);


 pci_read_irq_line(dev);
 if (ppc_md.pci_irq_fixup)
  ppc_md.pci_irq_fixup(dev);
}
