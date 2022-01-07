
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int fmnumber; } ;


 int ADMHC_SFN_FR_MASK ;
 int ADMHC_SFN_FR_SHIFT ;
 int admhc_readl (struct admhcd const*,int *) ;

__attribute__((used)) static inline u16 admhc_frame_remain(const struct admhcd *ahcd)
{
 u32 t;

 t = admhc_readl(ahcd, &ahcd->regs->fmnumber) >> ADMHC_SFN_FR_SHIFT;
 t &= ADMHC_SFN_FR_MASK;
 return (u16)t;
}
