
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pebs_broken; } ;


 int intel_snb_pebs_broken () ;
 int pr_info (char*) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void intel_snb_check_microcode(void)
{
 if (intel_snb_pebs_broken() == x86_pmu.pebs_broken)
  return;




 if (x86_pmu.pebs_broken) {
  pr_info("PEBS enabled due to microcode update\n");
  x86_pmu.pebs_broken = 0;
 } else {
  pr_info("PEBS disabled due to CPU errata, please upgrade microcode\n");
  x86_pmu.pebs_broken = 1;
 }
}
