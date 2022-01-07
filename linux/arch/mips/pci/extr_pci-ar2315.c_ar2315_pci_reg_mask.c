
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ar2315_pci_ctrl {int dummy; } ;


 int ar2315_pci_reg_read (struct ar2315_pci_ctrl*,int ) ;
 int ar2315_pci_reg_write (struct ar2315_pci_ctrl*,int ,int ) ;

__attribute__((used)) static inline void ar2315_pci_reg_mask(struct ar2315_pci_ctrl *apc, u32 reg,
           u32 mask, u32 val)
{
 u32 ret = ar2315_pci_reg_read(apc, reg);

 ret &= ~mask;
 ret |= val;
 ar2315_pci_reg_write(apc, reg, ret);
}
