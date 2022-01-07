
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct cpu_hw_events {int txn_flags; int n_events; int assign; } ;
struct TYPE_2__ {int (* schedule_events ) (struct cpu_hw_events*,int,int*) ;} ;


 int EAGAIN ;
 int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (int) ;
 int X86_PMC_IDX_MAX ;
 int cpu_hw_events ;
 int memcpy (int ,int*,int) ;
 int perf_pmu_enable (struct pmu*) ;
 int stub1 (struct cpu_hw_events*,int,int*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_1__ x86_pmu ;
 int x86_pmu_initialized () ;

__attribute__((used)) static int x86_pmu_commit_txn(struct pmu *pmu)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);
 int assign[X86_PMC_IDX_MAX];
 int n, ret;

 WARN_ON_ONCE(!cpuc->txn_flags);

 if (cpuc->txn_flags & ~PERF_PMU_TXN_ADD) {
  cpuc->txn_flags = 0;
  return 0;
 }

 n = cpuc->n_events;

 if (!x86_pmu_initialized())
  return -EAGAIN;

 ret = x86_pmu.schedule_events(cpuc, n, assign);
 if (ret)
  return ret;





 memcpy(cpuc->assign, assign, n*sizeof(int));

 cpuc->txn_flags = 0;
 perf_pmu_enable(pmu);
 return 0;
}
