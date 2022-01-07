
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;
struct pci_bus {int dummy; } ;


 int EEH_IO_ERROR_VALUE (int) ;
 int PCIBIOS_DEVICE_NOT_FOUND ;
 scalar_t__ eeh_dev_check_failure (int ) ;
 struct pci_dn* pci_get_pdn_by_devfn (struct pci_bus*,unsigned int) ;
 int pdn_to_eeh_dev (struct pci_dn*) ;
 int rtas_read_config (struct pci_dn*,int,int,int*) ;

__attribute__((used)) static int rtas_pci_read_config(struct pci_bus *bus,
    unsigned int devfn,
    int where, int size, u32 *val)
{
 struct pci_dn *pdn;
 int ret;

 *val = 0xFFFFFFFF;

 pdn = pci_get_pdn_by_devfn(bus, devfn);


 ret = rtas_read_config(pdn, where, size, val);
 if (*val == EEH_IO_ERROR_VALUE(size) &&
     eeh_dev_check_failure(pdn_to_eeh_dev(pdn)))
  return PCIBIOS_DEVICE_NOT_FOUND;

 return ret;
}
