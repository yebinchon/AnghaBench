
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_4__ {int dma_offset; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; } ;
struct device_node {struct device_node* parent; } ;
typedef int __be32 ;
struct TYPE_6__ {int table_group; } ;


 scalar_t__ DMA_BIT_MASK (int) ;
 TYPE_3__* PCI_DN (struct device_node*) ;
 int dev_dbg (TYPE_2__*,char*,struct device_node*) ;
 int enable_ddw (struct pci_dev*,struct device_node*) ;
 int * of_get_property (struct device_node*,char*,int *) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;

__attribute__((used)) static bool iommu_bypass_supported_pSeriesLP(struct pci_dev *pdev, u64 dma_mask)
{
 struct device_node *dn = pci_device_to_OF_node(pdev), *pdn;
 const __be32 *dma_window = ((void*)0);


 if (dma_mask < DMA_BIT_MASK(64))
  return 0;

 dev_dbg(&pdev->dev, "node is %pOF\n", dn);







 for (pdn = dn; pdn && PCI_DN(pdn) && !PCI_DN(pdn)->table_group;
   pdn = pdn->parent) {
  dma_window = of_get_property(pdn, "ibm,dma-window", ((void*)0));
  if (dma_window)
   break;
 }

 if (pdn && PCI_DN(pdn)) {
  pdev->dev.archdata.dma_offset = enable_ddw(pdev, pdn);
  if (pdev->dev.archdata.dma_offset)
   return 1;
 }

 return 0;
}
