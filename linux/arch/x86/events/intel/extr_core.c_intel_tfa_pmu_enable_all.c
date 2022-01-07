
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_hw_events {int active_mask; } ;


 int cpu_hw_events ;
 int intel_pmu_enable_all (int) ;
 int intel_set_tfa (struct cpu_hw_events*,int) ;
 int test_bit (int,int ) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;

__attribute__((used)) static void intel_tfa_pmu_enable_all(int added)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);





 if (!test_bit(3, cpuc->active_mask))
  intel_set_tfa(cpuc, 0);

 intel_pmu_enable_all(added);
}
