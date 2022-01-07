
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ counter_freezing; } ;


 int disable_counter_freeze () ;
 int fini_debug_store_on_cpu (int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void intel_pmu_cpu_dying(int cpu)
{
 fini_debug_store_on_cpu(cpu);

 if (x86_pmu.counter_freezing)
  disable_counter_freeze();
}
