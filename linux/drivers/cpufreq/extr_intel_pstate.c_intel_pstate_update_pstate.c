
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current_pstate; } ;
struct cpudata {TYPE_1__ pstate; } ;
struct TYPE_4__ {int (* get_val ) (struct cpudata*,int) ;} ;


 int MSR_IA32_PERF_CTL ;
 TYPE_2__ pstate_funcs ;
 int stub1 (struct cpudata*,int) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void intel_pstate_update_pstate(struct cpudata *cpu, int pstate)
{
 if (pstate == cpu->pstate.current_pstate)
  return;

 cpu->pstate.current_pstate = pstate;
 wrmsrl(MSR_IA32_PERF_CTL, pstate_funcs.get_val(cpu, pstate));
}
