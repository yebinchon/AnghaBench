
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;
struct cpu_hw_events {int txn_flags; int n_events; int events; int event; } ;


 int EAGAIN ;
 int EINVAL ;
 int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ check_excludes (int ,int ,int) ;
 int cpu_hw_events ;
 int perf_pmu_enable (struct pmu*) ;
 scalar_t__ sparc_check_constraints (int ,int ,int) ;
 int sparc_pmu ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int sparc_pmu_commit_txn(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int n;

 if (!sparc_pmu)
  return -EINVAL;

 WARN_ON_ONCE(!cpuc->txn_flags);

 if (cpuc->txn_flags & ~PERF_PMU_TXN_ADD) {
  cpuc->txn_flags = 0;
  return 0;
 }

 n = cpuc->n_events;
 if (check_excludes(cpuc->event, 0, n))
  return -EINVAL;
 if (sparc_check_constraints(cpuc->event, cpuc->events, n))
  return -EAGAIN;

 cpuc->txn_flags = 0;
 perf_pmu_enable(pmu);
 return 0;
}
