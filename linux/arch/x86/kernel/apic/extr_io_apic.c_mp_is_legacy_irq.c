
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nr_legacy_irqs () ;

__attribute__((used)) static inline bool mp_is_legacy_irq(int irq)
{
 return irq >= 0 && irq < nr_legacy_irqs();
}
