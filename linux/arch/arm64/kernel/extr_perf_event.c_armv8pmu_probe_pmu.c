
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armv8pmu_probe_info {int present; struct arm_pmu* pmu; } ;
struct arm_pmu {int supported_cpus; } ;


 int ENODEV ;
 int __armv8pmu_probe_pmu ;
 int smp_call_function_any (int *,int ,struct armv8pmu_probe_info*,int) ;

__attribute__((used)) static int armv8pmu_probe_pmu(struct arm_pmu *cpu_pmu)
{
 struct armv8pmu_probe_info probe = {
  .pmu = cpu_pmu,
  .present = 0,
 };
 int ret;

 ret = smp_call_function_any(&cpu_pmu->supported_cpus,
        __armv8pmu_probe_pmu,
        &probe, 1);
 if (ret)
  return ret;

 return probe.present ? 0 : -ENODEV;
}
