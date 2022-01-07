
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prdlo; int tcr; } ;


 int DSCR_DEVSTATE_DISABLED ;
 int TCR_ENAMODELO_MASK ;
 int dscr_set_devstate (scalar_t__,int ) ;
 int soc_readl (int *) ;
 int soc_writel (int,int *) ;
 TYPE_1__* timer ;
 scalar_t__ timer64_devstate_id ;

__attribute__((used)) static void timer64_disable(void)
{

 soc_writel(soc_readl(&timer->tcr) & ~TCR_ENAMODELO_MASK, &timer->tcr);
 soc_writel(0, &timer->prdlo);

 if (timer64_devstate_id >= 0)
  dscr_set_devstate(timer64_devstate_id, DSCR_DEVSTATE_DISABLED);
}
