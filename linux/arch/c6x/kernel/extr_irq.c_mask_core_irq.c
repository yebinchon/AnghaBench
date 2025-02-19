
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int hwirq; } ;


 int IER ;
 int and_creg (int ,int) ;
 int core_irq_lock ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void mask_core_irq(struct irq_data *data)
{
 unsigned int prio = data->hwirq;

 raw_spin_lock(&core_irq_lock);
 and_creg(IER, ~(1 << prio));
 raw_spin_unlock(&core_irq_lock);
}
