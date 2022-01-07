
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imc_pmu {int pmu; } ;


 struct imc_pmu** per_nest_pmu_arr ;
 int perf_pmu_migrate_context (int *,int,int) ;

__attribute__((used)) static void nest_change_cpu_context(int old_cpu, int new_cpu)
{
 struct imc_pmu **pn = per_nest_pmu_arr;

 if (old_cpu < 0 || new_cpu < 0)
  return;

 while (*pn) {
  perf_pmu_migrate_context(&(*pn)->pmu, old_cpu, new_cpu);
  pn++;
 }
}
