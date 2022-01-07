
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int RM7K_CPU_IRQ_BASE ;
 int set_c0_intcontrol (int) ;

__attribute__((used)) static inline void unmask_rm7k_irq(struct irq_data *d)
{
 set_c0_intcontrol(0x100 << (d->irq - RM7K_CPU_IRQ_BASE));
}
