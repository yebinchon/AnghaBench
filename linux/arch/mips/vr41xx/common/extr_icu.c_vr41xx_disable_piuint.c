
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct irq_desc {int lock; } ;


 scalar_t__ CPU_VR4111 ;
 scalar_t__ CPU_VR4121 ;
 int MPIUINTREG ;
 int PIU_IRQ ;
 scalar_t__ current_cpu_type () ;
 int icu1_clear (int ,int ) ;
 struct irq_desc* irq_to_desc (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_disable_piuint(uint16_t mask)
{
 struct irq_desc *desc = irq_to_desc(PIU_IRQ);
 unsigned long flags;

 if (current_cpu_type() == CPU_VR4111 ||
     current_cpu_type() == CPU_VR4121) {
  raw_spin_lock_irqsave(&desc->lock, flags);
  icu1_clear(MPIUINTREG, mask);
  raw_spin_unlock_irqrestore(&desc->lock, flags);
 }
}
