
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cnapcr; int cdozcr; } ;




 int clrbits32 (int *,unsigned int) ;
 int get_hard_smp_processor_id (int) ;
 int pr_warn (char*,int) ;
 TYPE_1__* rcpm_v1_regs ;

__attribute__((used)) static void rcpm_v1_cpu_exit_state(int cpu, int state)
{
 int hw_cpu = get_hard_smp_processor_id(cpu);
 unsigned int mask = 1 << hw_cpu;

 switch (state) {
 case 129:
  clrbits32(&rcpm_v1_regs->cdozcr, mask);
  break;
 case 128:
  clrbits32(&rcpm_v1_regs->cnapcr, mask);
  break;
 default:
  pr_warn("Unknown cpu PM state (%d)\n", state);
  break;
 }
}
