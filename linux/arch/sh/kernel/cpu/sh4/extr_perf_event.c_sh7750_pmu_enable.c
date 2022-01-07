
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int config; } ;


 int PMCR (int) ;
 int PMCR_PMCLR ;
 int PMCR_PMEN ;
 int PMCR_PMST ;
 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void sh7750_pmu_enable(struct hw_perf_event *hwc, int idx)
{
 __raw_writew(__raw_readw(PMCR(idx)) | PMCR_PMCLR, PMCR(idx));
 __raw_writew(hwc->config | PMCR_PMEN | PMCR_PMST, PMCR(idx));
}
