
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct admhcd {TYPE_1__* regs; } ;
struct TYPE_2__ {int host_control; } ;


 int ADMHC_HC_DMAE ;
 int admhc_readl (struct admhcd*,int *) ;
 int admhc_vdbg (struct admhcd*,char*) ;
 int admhc_writel (struct admhcd*,int,int *) ;

__attribute__((used)) static inline void admhc_dma_disable(struct admhcd *ahcd)
{
 u32 t;

 t = admhc_readl(ahcd, &ahcd->regs->host_control);
 if (!(t & ADMHC_HC_DMAE))
  return;

 t &= ~ADMHC_HC_DMAE;
 admhc_writel(ahcd, t, &ahcd->regs->host_control);
 admhc_vdbg(ahcd, "DMA disabled\n");
}
