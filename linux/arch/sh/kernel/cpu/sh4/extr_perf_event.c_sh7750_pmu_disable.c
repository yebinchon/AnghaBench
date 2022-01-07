
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int dummy; } ;


 int PMCR (int) ;
 unsigned int PMCR_PMEN ;
 unsigned int PMCR_PMM_MASK ;
 unsigned int __raw_readw (int ) ;
 int __raw_writew (unsigned int,int ) ;

__attribute__((used)) static void sh7750_pmu_disable(struct hw_perf_event *hwc, int idx)
{
 unsigned int tmp;

 tmp = __raw_readw(PMCR(idx));
 tmp &= ~(PMCR_PMM_MASK | PMCR_PMEN);
 __raw_writew(tmp, PMCR(idx));
}
