
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;


 int PCI_CAPABILITY_LIST ;
 int PCI_STATUS ;
 int PCI_STATUS_CAP_LIST ;
 int rtas_read_config (struct pci_dn*,int ,int,int*) ;

__attribute__((used)) static int pseries_eeh_cap_start(struct pci_dn *pdn)
{
 u32 status;

 if (!pdn)
  return 0;

 rtas_read_config(pdn, PCI_STATUS, 2, &status);
 if (!(status & PCI_STATUS_CAP_LIST))
  return 0;

 return PCI_CAPABILITY_LIST;
}
