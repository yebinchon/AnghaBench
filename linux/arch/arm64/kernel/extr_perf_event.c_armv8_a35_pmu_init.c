
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_pmu {char* name; int ** attr_groups; int map_event; } ;


 size_t ARMPMU_ATTR_GROUP_EVENTS ;
 size_t ARMPMU_ATTR_GROUP_FORMATS ;
 int armv8_a53_map_event ;
 int armv8_pmu_init (struct arm_pmu*) ;
 int armv8_pmuv3_events_attr_group ;
 int armv8_pmuv3_format_attr_group ;

__attribute__((used)) static int armv8_a35_pmu_init(struct arm_pmu *cpu_pmu)
{
 int ret = armv8_pmu_init(cpu_pmu);
 if (ret)
  return ret;

 cpu_pmu->name = "armv8_cortex_a35";
 cpu_pmu->map_event = armv8_a53_map_event;
 cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_EVENTS] =
  &armv8_pmuv3_events_attr_group;
 cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] =
  &armv8_pmuv3_format_attr_group;

 return 0;
}
