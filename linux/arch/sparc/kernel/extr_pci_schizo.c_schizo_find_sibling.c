
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_pbm_info {int portid; struct pci_pbm_info* next; } ;


 struct pci_pbm_info* pci_pbm_root ;
 scalar_t__ portid_compare (int ,int ,int) ;

__attribute__((used)) static struct pci_pbm_info *schizo_find_sibling(u32 portid, int chip_type)
{
 struct pci_pbm_info *pbm;

 for (pbm = pci_pbm_root; pbm; pbm = pbm->next) {
  if (portid_compare(pbm->portid, portid, chip_type))
   return pbm;
 }
 return ((void*)0);
}
