
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {unsigned int txn_flags; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (int) ;
 int cpu_hw_events ;
 int perf_pmu_enable (struct pmu*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void power_pmu_cancel_txn(struct pmu *pmu)
{
 struct cpu_hw_events *cpuhw = this_cpu_ptr(&cpu_hw_events);
 unsigned int txn_flags;

 WARN_ON_ONCE(!cpuhw->txn_flags);

 txn_flags = cpuhw->txn_flags;
 cpuhw->txn_flags = 0;
 if (txn_flags & ~PERF_PMU_TXN_ADD)
  return;

 perf_pmu_enable(pmu);
}
