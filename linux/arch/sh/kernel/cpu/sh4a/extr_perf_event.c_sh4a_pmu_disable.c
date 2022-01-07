
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int dummy; } ;


 unsigned int CCBR_CIT_MASK ;
 unsigned int CCBR_DUC ;
 int PPC_CCBR (int) ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;

__attribute__((used)) static void sh4a_pmu_disable(struct hw_perf_event *hwc, int idx)
{
 unsigned int tmp;

 tmp = __raw_readl(PPC_CCBR(idx));
 tmp &= ~(CCBR_CIT_MASK | CCBR_DUC);
 __raw_writel(tmp, PPC_CCBR(idx));
}
