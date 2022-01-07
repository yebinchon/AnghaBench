
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpu_hw_events {scalar_t__ lbr_users; scalar_t__ lbr_pebs_users; } ;
struct TYPE_3__ {scalar_t__ lbr_format; } ;
struct TYPE_4__ {TYPE_1__ intel_cap; } ;


 scalar_t__ LBR_FORMAT_32 ;
 int cpu_hw_events ;
 int intel_pmu_lbr_filter (struct cpu_hw_events*) ;
 int intel_pmu_lbr_read_32 (struct cpu_hw_events*) ;
 int intel_pmu_lbr_read_64 (struct cpu_hw_events*) ;
 struct cpu_hw_events* this_cpu_ptr (int *) ;
 TYPE_2__ x86_pmu ;

void intel_pmu_lbr_read(void)
{
 struct cpu_hw_events *cpuc = this_cpu_ptr(&cpu_hw_events);







 if (!cpuc->lbr_users || cpuc->lbr_users == cpuc->lbr_pebs_users)
  return;

 if (x86_pmu.intel_cap.lbr_format == LBR_FORMAT_32)
  intel_pmu_lbr_read_32(cpuc);
 else
  intel_pmu_lbr_read_64(cpuc);

 intel_pmu_lbr_filter(cpuc);
}
