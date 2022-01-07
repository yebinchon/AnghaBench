
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_cf_events {unsigned int txn_flags; int state; int tx_state; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (unsigned int) ;
 int cpu_cf_events ;
 int perf_pmu_disable (struct pmu*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void cpumf_pmu_start_txn(struct pmu *pmu, unsigned int txn_flags)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);

 WARN_ON_ONCE(cpuhw->txn_flags);

 cpuhw->txn_flags = txn_flags;
 if (txn_flags & ~PERF_PMU_TXN_ADD)
  return;

 perf_pmu_disable(pmu);
 cpuhw->tx_state = cpuhw->state;
}
