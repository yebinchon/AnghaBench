
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {struct pci_bus* bus; } ;
struct pci_bus {scalar_t__ number; struct pci_bus* parent; } ;
struct iommu_table {scalar_t__ it_busno; } ;
struct device {int dummy; } ;


 int BUG_ON (int ) ;
 struct iommu_table* pci_iommu (struct pci_bus*) ;
 struct pci_dev* to_pci_dev (struct device*) ;

__attribute__((used)) static inline struct iommu_table *find_iommu_table(struct device *dev)
{
 struct pci_dev *pdev;
 struct pci_bus *pbus;
 struct iommu_table *tbl;

 pdev = to_pci_dev(dev);


 pbus = pdev->bus;
 do {
  tbl = pci_iommu(pbus);
  if (tbl && tbl->it_busno == pbus->number)
   break;
  tbl = ((void*)0);
  pbus = pbus->parent;
 } while (pbus);

 BUG_ON(tbl && (tbl->it_busno != pbus->number));

 return tbl;
}
