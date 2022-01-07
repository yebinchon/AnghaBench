
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct cpu_hw_events {int txn_flags; long n_events; long n_txn_start; int * events; TYPE_2__** event; int flags; } ;
struct TYPE_3__ {int config; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int EAGAIN ;
 int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ check_excludes (TYPE_2__**,int ,int ,long) ;
 int cpu_hw_events ;
 int perf_pmu_enable (struct pmu*) ;
 long power_check_constraints (struct cpu_hw_events*,int *,int ,long) ;
 int ppmu ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static int power_pmu_commit_txn(struct pmu *pmu)
{
 struct cpu_hw_events *cpuhw;
 long i, n;

 if (!ppmu)
  return -EAGAIN;

 cpuhw = this_cpu_ptr(&cpu_hw_events);
 WARN_ON_ONCE(!cpuhw->txn_flags);

 if (cpuhw->txn_flags & ~PERF_PMU_TXN_ADD) {
  cpuhw->txn_flags = 0;
  return 0;
 }

 n = cpuhw->n_events;
 if (check_excludes(cpuhw->event, cpuhw->flags, 0, n))
  return -EAGAIN;
 i = power_check_constraints(cpuhw, cpuhw->events, cpuhw->flags, n);
 if (i < 0)
  return -EAGAIN;

 for (i = cpuhw->n_txn_start; i < n; ++i)
  cpuhw->event[i]->hw.config = cpuhw->events[i];

 cpuhw->txn_flags = 0;
 perf_pmu_enable(pmu);
 return 0;
}
