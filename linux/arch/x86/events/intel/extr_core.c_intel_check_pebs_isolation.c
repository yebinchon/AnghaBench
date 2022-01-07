
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pebs_no_isolation; } ;


 int isolation_ucodes ;
 int x86_cpu_has_min_microcode_rev (int ) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void intel_check_pebs_isolation(void)
{
 x86_pmu.pebs_no_isolation = !x86_cpu_has_min_microcode_rev(isolation_ucodes);
}
