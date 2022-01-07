
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_events; } ;


 int CCBR_DUC ;
 int PPC_CCBR (int) ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 TYPE_1__ sh4a_pmu ;

__attribute__((used)) static void sh4a_pmu_disable_all(void)
{
 int i;

 for (i = 0; i < sh4a_pmu.num_events; i++)
  __raw_writel(__raw_readl(PPC_CCBR(i)) & ~CCBR_DUC, PPC_CCBR(i));
}
