
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tpmnmimr0; int tpmmcmr0; int tpmcimr0; int tpmimr0; } ;


 int clrbits32 (int *,unsigned int) ;
 int get_hard_smp_processor_id (int) ;
 TYPE_1__* rcpm_v2_regs ;

__attribute__((used)) static void rcpm_v2_irq_unmask(int cpu)
{
 int hw_cpu = get_hard_smp_processor_id(cpu);
 unsigned int mask = 1 << hw_cpu;

 clrbits32(&rcpm_v2_regs->tpmimr0, mask);
 clrbits32(&rcpm_v2_regs->tpmcimr0, mask);
 clrbits32(&rcpm_v2_regs->tpmmcmr0, mask);
 clrbits32(&rcpm_v2_regs->tpmnmimr0, mask);
}
