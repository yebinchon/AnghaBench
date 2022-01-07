
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct power_pmu {int attr_groups; int name; } ;
struct TYPE_3__ {int attr_groups; } ;


 int CPUHP_PERF_POWER ;
 int EBUSY ;
 int MMCR0_FCHV ;
 int MSR_HV ;
 int PERF_TYPE_RAW ;
 int cpuhp_setup_state (int ,char*,int ,int *) ;
 int freeze_events_kernel ;
 int mfmsr () ;
 int perf_pmu_register (TYPE_1__*,char*,int ) ;
 TYPE_1__ power_pmu ;
 int power_pmu_prepare_cpu ;
 struct power_pmu* ppmu ;
 int pr_info (char*,int ) ;

int register_power_pmu(struct power_pmu *pmu)
{
 if (ppmu)
  return -EBUSY;

 ppmu = pmu;
 pr_info("%s performance monitor hardware support registered\n",
  pmu->name);

 power_pmu.attr_groups = ppmu->attr_groups;
 perf_pmu_register(&power_pmu, "cpu", PERF_TYPE_RAW);
 cpuhp_setup_state(CPUHP_PERF_POWER, "perf/powerpc:prepare",
     power_pmu_prepare_cpu, ((void*)0));
 return 0;
}
