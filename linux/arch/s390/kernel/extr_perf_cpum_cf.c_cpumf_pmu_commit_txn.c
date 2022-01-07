
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pmu {int dummy; } ;
struct TYPE_2__ {int auth_ctl; } ;
struct cpu_cf_events {int txn_flags; int state; TYPE_1__ info; } ;


 int CPUMF_LCCTL_ENABLE_SHIFT ;
 int ENOENT ;
 int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (int) ;
 int cpu_cf_events ;
 int perf_pmu_enable (struct pmu*) ;
 struct cpu_cf_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int cpumf_pmu_commit_txn(struct pmu *pmu)
{
 struct cpu_cf_events *cpuhw = this_cpu_ptr(&cpu_cf_events);
 u64 state;

 WARN_ON_ONCE(!cpuhw->txn_flags);

 if (cpuhw->txn_flags & ~PERF_PMU_TXN_ADD) {
  cpuhw->txn_flags = 0;
  return 0;
 }


 state = cpuhw->state & ~((1 << CPUMF_LCCTL_ENABLE_SHIFT) - 1);
 state >>= CPUMF_LCCTL_ENABLE_SHIFT;
 if ((state & cpuhw->info.auth_ctl) != state)
  return -ENOENT;

 cpuhw->txn_flags = 0;
 perf_pmu_enable(pmu);
 return 0;
}
