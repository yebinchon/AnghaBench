
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {scalar_t__ pci_ext_config_space; } ;



__attribute__((used)) static inline int config_access_valid(struct pci_dn *dn, int where)
{
 if (where < 256)
  return 1;
 if (where < 4096 && dn->pci_ext_config_space)
  return 1;

 return 0;
}
