
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC_REG_PCT_INT_ACT ;
 int IRQ_TYPE_NONE ;
 int enable_percpu_irq (int,int ) ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static void arc_cpu_pmu_irq_init(void *data)
{
 int irq = *(int *)data;

 enable_percpu_irq(irq, IRQ_TYPE_NONE);


 write_aux_reg(ARC_REG_PCT_INT_ACT, 0xffffffff);
}
