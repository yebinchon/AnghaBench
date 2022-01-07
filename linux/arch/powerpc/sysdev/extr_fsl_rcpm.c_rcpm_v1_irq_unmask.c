
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpmnmimr; int cpmmcmr; int cpmcimr; int cpmimr; } ;


 int clrbits32 (int *,unsigned int) ;
 int get_hard_smp_processor_id (int) ;
 TYPE_1__* rcpm_v1_regs ;

__attribute__((used)) static void rcpm_v1_irq_unmask(int cpu)
{
 int hw_cpu = get_hard_smp_processor_id(cpu);
 unsigned int mask = 1 << hw_cpu;

 clrbits32(&rcpm_v1_regs->cpmimr, mask);
 clrbits32(&rcpm_v1_regs->cpmcimr, mask);
 clrbits32(&rcpm_v1_regs->cpmmcmr, mask);
 clrbits32(&rcpm_v1_regs->cpmnmimr, mask);
}
