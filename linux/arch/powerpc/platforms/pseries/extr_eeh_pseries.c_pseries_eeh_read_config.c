
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {int dummy; } ;


 int rtas_read_config (struct pci_dn*,int,int,int *) ;

__attribute__((used)) static int pseries_eeh_read_config(struct pci_dn *pdn, int where, int size, u32 *val)
{
 return rtas_read_config(pdn, where, size, val);
}
