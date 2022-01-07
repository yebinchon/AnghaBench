
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int perf_pmu_enable (struct pmu*) ;

__attribute__((used)) static int thread_imc_pmu_commit_txn(struct pmu *pmu)
{
 perf_pmu_enable(pmu);
 return 0;
}
