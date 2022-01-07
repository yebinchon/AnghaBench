
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int sysdata; } ;
struct cns3xxx_pcie {int dummy; } ;


 struct cns3xxx_pcie* sysdata_to_cnspci (int ) ;

__attribute__((used)) static struct cns3xxx_pcie *pdev_to_cnspci(const struct pci_dev *dev)
{
 return sysdata_to_cnspci(dev->sysdata);
}
