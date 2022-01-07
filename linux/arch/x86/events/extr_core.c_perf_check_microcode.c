
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* check_microcode ) () ;} ;


 int stub1 () ;
 TYPE_1__ x86_pmu ;

void perf_check_microcode(void)
{
 if (x86_pmu.check_microcode)
  x86_pmu.check_microcode();
}
