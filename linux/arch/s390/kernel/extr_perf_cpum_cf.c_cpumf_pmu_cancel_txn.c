
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_cf_events {unsigned int txn_flags; scalar_t__ tx_state; scalar_t__ state; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int cpu_cf_events ;
 int perf_pmu_enable (struct pmu*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_pmu_cancel_txn(struct pmu *pmu)
{
 unsigned int txn_flags;
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);

 WARN_ON_ONCE(!cpuhw->txn_flags);

 txn_flags = cpuhw->txn_flags;
 cpuhw->txn_flags = 0;
 if (txn_flags & ~PERF_PMU_TXN_ADD)
  return;

 WARN_ON(cpuhw->tx_state != cpuhw->state);

 perf_pmu_enable(pmu);
}
