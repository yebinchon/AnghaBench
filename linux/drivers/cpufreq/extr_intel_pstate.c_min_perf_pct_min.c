
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int turbo_pstate; int min_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;


 struct cpudata** all_cpu_data ;

__attribute__((used)) static int min_perf_pct_min(void)
{
 struct cpudata *cpu = all_cpu_data[0];
 int turbo_pstate = cpu->pstate.turbo_pstate;

 return turbo_pstate ?
  (cpu->pstate.min_pstate * 100 / turbo_pstate) : 0;
}
