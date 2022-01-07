
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int perf_pmu_disable (struct pmu*) ;

__attribute__((used)) static void thread_imc_pmu_start_txn(struct pmu *pmu,
         unsigned int txn_flags)
{
 if (txn_flags & ~PERF_PMU_TXN_ADD)
  return;
 perf_pmu_disable(pmu);
}
