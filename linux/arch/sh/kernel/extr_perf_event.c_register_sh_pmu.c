
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sh_pmu {scalar_t__ num_events; int name; } ;
struct TYPE_3__ {int capabilities; } ;


 int CPUHP_PERF_SUPERH ;
 int EBUSY ;
 scalar_t__ MAX_HWEVENTS ;
 int PERF_PMU_CAP_NO_INTERRUPT ;
 int PERF_TYPE_RAW ;
 int WARN_ON (int) ;
 int cpuhp_setup_state (int ,char*,int ,int *) ;
 int perf_pmu_register (TYPE_1__*,char*,int ) ;
 TYPE_1__ pmu ;
 int pr_info (char*,int ) ;
 struct sh_pmu* sh_pmu ;
 int sh_pmu_prepare_cpu ;

int register_sh_pmu(struct sh_pmu *_pmu)
{
 if (sh_pmu)
  return -EBUSY;
 sh_pmu = _pmu;

 pr_info("Performance Events: %s support registered\n", _pmu->name);






 pmu.capabilities |= PERF_PMU_CAP_NO_INTERRUPT;

 WARN_ON(_pmu->num_events > MAX_HWEVENTS);

 perf_pmu_register(&pmu, "cpu", PERF_TYPE_RAW);
 cpuhp_setup_state(CPUHP_PERF_SUPERH, "PERF_SUPERH", sh_pmu_prepare_cpu,
     ((void*)0));
 return 0;
}
