
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_pbm_info {scalar_t__ portid; struct pci_pbm_info* next; } ;


 struct pci_pbm_info* pci_pbm_root ;

__attribute__((used)) static struct pci_pbm_info *psycho_find_sibling(u32 upa_portid)
{
 struct pci_pbm_info *pbm;

 for (pbm = pci_pbm_root; pbm; pbm = pbm->next) {
  if (pbm->portid == upa_portid)
   return pbm;
 }
 return ((void*)0);
}
