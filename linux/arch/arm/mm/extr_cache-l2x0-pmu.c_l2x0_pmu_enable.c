
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int dummy; } ;


 int __l2x0_pmu_enable () ;
 scalar_t__ l2x0_pmu_num_active_counters () ;

__attribute__((used)) static void l2x0_pmu_enable(struct pmu *pmu)
{
 if (l2x0_pmu_num_active_counters() == 0)
  return;

 __l2x0_pmu_enable();
}
