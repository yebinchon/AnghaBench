
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ar2315_pci_ctrl {scalar_t__ mmr_mem; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void ar2315_pci_reg_write(struct ar2315_pci_ctrl *apc, u32 reg,
     u32 val)
{
 __raw_writel(val, apc->mmr_mem + reg);
}
