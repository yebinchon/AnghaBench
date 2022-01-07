
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tpmnmimr0; int tpmmcmr0; int tpmcimr0; int tpmimr0; } ;


 int get_hard_smp_processor_id (int) ;
 TYPE_1__* rcpm_v2_regs ;
 int setbits32 (int *,unsigned int) ;

__attribute__((used)) static void rcpm_v2_irq_mask(int cpu)
{
 int hw_cpu = get_hard_smp_processor_id(cpu);
 unsigned int mask = 1 << hw_cpu;

 setbits32(&rcpm_v2_regs->tpmimr0, mask);
 setbits32(&rcpm_v2_regs->tpmcimr0, mask);
 setbits32(&rcpm_v2_regs->tpmmcmr0, mask);
 setbits32(&rcpm_v2_regs->tpmnmimr0, mask);
}
