
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int intel_pmu_enable_all (int) ;
 int intel_pmu_nhm_workaround () ;

__attribute__((used)) static void intel_pmu_nhm_enable_all(int added)
{
 if (added)
  intel_pmu_nhm_workaround();
 intel_pmu_enable_all(added);
}
