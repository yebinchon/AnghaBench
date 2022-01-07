
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_controller {int dummy; } ;
struct eeh_pe_get_flag {int member_0; int member_1; } ;
struct eeh_pe {int dummy; } ;


 int __eeh_pe_get ;
 struct eeh_pe* eeh_pe_traverse (struct eeh_pe*,int ,struct eeh_pe_get_flag*) ;
 struct eeh_pe* eeh_phb_pe_get (struct pci_controller*) ;

struct eeh_pe *eeh_pe_get(struct pci_controller *phb,
  int pe_no, int config_addr)
{
 struct eeh_pe *root = eeh_phb_pe_get(phb);
 struct eeh_pe_get_flag tmp = { pe_no, config_addr };
 struct eeh_pe *pe;

 pe = eeh_pe_traverse(root, __eeh_pe_get, &tmp);

 return pe;
}
