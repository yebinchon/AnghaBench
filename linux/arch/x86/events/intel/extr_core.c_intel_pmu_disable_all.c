
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __intel_pmu_disable_all () ;
 int intel_pmu_lbr_disable_all () ;

__attribute__((used)) static void intel_pmu_disable_all(void)
{
 __intel_pmu_disable_all();
 intel_pmu_lbr_disable_all();
}
