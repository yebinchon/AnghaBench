
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ar2315_pci_ctrl {scalar_t__ mmr_mem; } ;


 scalar_t__ __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 ar2315_pci_reg_read(struct ar2315_pci_ctrl *apc, u32 reg)
{
 return __raw_readl(apc->mmr_mem + reg);
}
