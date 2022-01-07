
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_pbm_info {int index; } ;
struct pci_bus {struct pci_pbm_info* sysdata; } ;


 int ENXIO ;

int pci_domain_nr(struct pci_bus *pbus)
{
 struct pci_pbm_info *pbm = pbus->sysdata;
 int ret;

 if (!pbm) {
  ret = -ENXIO;
 } else {
  ret = pbm->index;
 }

 return ret;
}
