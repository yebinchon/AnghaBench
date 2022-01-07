
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tgcr; int tcr; int prdlo; } ;


 int DSCR_DEVSTATE_ENABLED ;
 int TCR_CLKSRCLO ;
 int TCR_ENAMODELO_MASK ;
 int TCR_PWIDLO_MASK ;
 int TGCR_TIMLORS ;
 int TGCR_TIMMODE_MASK ;
 int TGCR_TIMMODE_UD32 ;
 int dscr_set_devstate (scalar_t__,int ) ;
 int soc_readl (int *) ;
 int soc_writel (int,int *) ;
 TYPE_1__* timer ;
 scalar_t__ timer64_devstate_id ;

__attribute__((used)) static void timer64_enable(void)
{
 u32 val;

 if (timer64_devstate_id >= 0)
  dscr_set_devstate(timer64_devstate_id, DSCR_DEVSTATE_ENABLED);


 soc_writel(soc_readl(&timer->tcr) & ~TCR_ENAMODELO_MASK, &timer->tcr);
 soc_writel(0, &timer->prdlo);


 val = soc_readl(&timer->tcr);
 soc_writel(val & ~(TCR_CLKSRCLO | TCR_PWIDLO_MASK), &timer->tcr);


 val = soc_readl(&timer->tgcr) & ~TGCR_TIMMODE_MASK;
 soc_writel(val, &timer->tgcr);
 soc_writel(val | (TGCR_TIMLORS | TGCR_TIMMODE_UD32), &timer->tgcr);
}
