
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {int tcr; int cntlo; int prdlo; } ;


 unsigned long TCR_ENAMODELO_MASK ;
 unsigned long soc_readl (int *) ;
 int soc_writel (unsigned long,int *) ;
 TYPE_1__* timer ;
 unsigned long timer64_mode ;

__attribute__((used)) static void timer64_config(unsigned long period)
{
 u32 tcr = soc_readl(&timer->tcr) & ~TCR_ENAMODELO_MASK;

 soc_writel(tcr, &timer->tcr);
 soc_writel(period - 1, &timer->prdlo);
 soc_writel(0, &timer->cntlo);
 tcr |= timer64_mode;
 soc_writel(tcr, &timer->tcr);
}
