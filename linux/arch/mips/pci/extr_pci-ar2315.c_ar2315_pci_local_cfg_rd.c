
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar2315_pci_ctrl {int dummy; } ;


 int ar2315_pci_cfg_access (struct ar2315_pci_ctrl*,unsigned int,int,int,int *,int) ;

__attribute__((used)) static inline int ar2315_pci_local_cfg_rd(struct ar2315_pci_ctrl *apc,
       unsigned devfn, int where, u32 *val)
{
 return ar2315_pci_cfg_access(apc, devfn, where, sizeof(u32), val,
         0);
}
