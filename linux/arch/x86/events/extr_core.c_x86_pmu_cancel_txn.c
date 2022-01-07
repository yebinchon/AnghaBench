
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmu {int dummy; } ;
struct cpu_hw_events {unsigned int txn_flags; } ;
struct TYPE_3__ {int n_txn; int n_events; int n_added; } ;


 unsigned int PERF_PMU_TXN_ADD ;
 int WARN_ON_ONCE (int) ;
 int __this_cpu_read (int ) ;
 int __this_cpu_sub (int ,int ) ;
 TYPE_1__ cpu_hw_events ;
 int perf_pmu_enable (struct pmu*) ;
 struct cpu_hw_events* this_cpu_ptr (TYPE_1__*) ;

__attribute__((used)) static void x86_pmu_cancel_txn(struct pmu *pmu)
{
 unsigned int txn_flags;
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);

 WARN_ON_ONCE(!cpuc->txn_flags);

 txn_flags = cpuc->txn_flags;
 cpuc->txn_flags = 0;
 if (txn_flags & ~PERF_PMU_TXN_ADD)
  return;





 __this_cpu_sub(cpu_hw_events.n_added, __this_cpu_read(cpu_hw_events.n_txn));
 __this_cpu_sub(cpu_hw_events.n_events, __this_cpu_read(cpu_hw_events.n_txn));
 perf_pmu_enable(pmu);
}
