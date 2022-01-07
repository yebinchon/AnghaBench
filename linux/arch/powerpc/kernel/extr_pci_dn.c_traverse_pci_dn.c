
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;


 struct pci_dn* pci_dn_next_one (struct pci_dn*,struct pci_dn*) ;

void *traverse_pci_dn(struct pci_dn *root,
        void *(*fn)(struct pci_dn *, void *),
        void *data)
{
 struct pci_dn *pdn = root;
 void *ret;


 for (pdn = pci_dn_next_one(root, pdn); pdn;
      pdn = pci_dn_next_one(root, pdn)) {
  ret = fn(pdn, data);
  if (ret)
   return ret;
 }

 return ((void*)0);
}
