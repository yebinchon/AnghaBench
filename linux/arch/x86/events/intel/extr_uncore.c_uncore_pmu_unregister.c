
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_pmu {int registered; int pmu; } ;


 int perf_pmu_unregister (int *) ;

__attribute__((used)) static void uncore_pmu_unregister(struct intel_uncore_pmu *pmu)
{
 if (!pmu->registered)
  return;
 perf_pmu_unregister(&pmu->pmu);
 pmu->registered = 0;
}
