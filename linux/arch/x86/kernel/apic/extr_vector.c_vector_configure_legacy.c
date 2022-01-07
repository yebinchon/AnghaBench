
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct apic_chip_data {int can_reserve; scalar_t__ cpu; int vector; } ;


 int ISA_IRQ_VECTOR (unsigned int) ;
 int apic_update_irq_cfg (struct irq_data*,int ,scalar_t__) ;
 int clear_irq_vector (struct irq_data*) ;
 scalar_t__ irqd_is_activated (struct irq_data*) ;
 int irqd_set_can_reserve (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_vector_setup (unsigned int,int,int ) ;
 int vector_lock ;

__attribute__((used)) static bool vector_configure_legacy(unsigned int virq, struct irq_data *irqd,
        struct apic_chip_data *apicd)
{
 unsigned long flags;
 bool realloc = 0;

 apicd->vector = ISA_IRQ_VECTOR(virq);
 apicd->cpu = 0;

 raw_spin_lock_irqsave(&vector_lock, flags);




 if (irqd_is_activated(irqd)) {
  trace_vector_setup(virq, 1, 0);
  apic_update_irq_cfg(irqd, apicd->vector, apicd->cpu);
 } else {

  apicd->can_reserve = 1;
  irqd_set_can_reserve(irqd);
  clear_irq_vector(irqd);
  realloc = 1;
 }
 raw_spin_unlock_irqrestore(&vector_lock, flags);
 return realloc;
}
