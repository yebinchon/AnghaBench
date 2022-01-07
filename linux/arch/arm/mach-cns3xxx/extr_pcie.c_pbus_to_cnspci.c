
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_bus {int sysdata; } ;
struct cns3xxx_pcie {int dummy; } ;


 struct cns3xxx_pcie* sysdata_to_cnspci (int ) ;

__attribute__((used)) static struct cns3xxx_pcie *pbus_to_cnspci(struct pci_bus *bus)
{
 return sysdata_to_cnspci(bus->sysdata);
}
