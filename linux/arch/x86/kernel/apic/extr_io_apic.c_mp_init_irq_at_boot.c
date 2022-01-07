
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mp_is_legacy_irq (int) ;
 int nr_legacy_irqs () ;

__attribute__((used)) static inline int mp_init_irq_at_boot(int ioapic, int irq)
{
 if (!nr_legacy_irqs())
  return 0;

 return ioapic == 0 || mp_is_legacy_irq(irq);
}
