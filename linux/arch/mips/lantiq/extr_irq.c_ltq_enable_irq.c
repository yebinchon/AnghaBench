
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned long hwirq; } ;


 int BIT (unsigned long) ;
 unsigned long INT_NUM_IM_OFFSET ;
 int LTQ_ICU_IER ;
 unsigned long MIPS_CPU_IRQ_CASCADE ;
 int cpumask_first (int ) ;
 int irq_data_get_effective_affinity_mask (struct irq_data*) ;
 int ltq_icu_lock ;
 int ltq_icu_r32 (int,unsigned long,int ) ;
 int ltq_icu_w32 (int,unsigned long,int,int ) ;
 int nr_cpu_ids ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int smp_processor_id () ;
 scalar_t__ unlikely (int) ;

void ltq_enable_irq(struct irq_data *d)
{
 unsigned long offset = d->hwirq - MIPS_CPU_IRQ_CASCADE;
 unsigned long im = offset / INT_NUM_IM_OFFSET;
 unsigned long flags;
 int vpe;

 offset %= INT_NUM_IM_OFFSET;

 vpe = cpumask_first(irq_data_get_effective_affinity_mask(d));


 if (unlikely(vpe >= nr_cpu_ids))
  vpe = smp_processor_id();

 raw_spin_lock_irqsave(&ltq_icu_lock, flags);

 ltq_icu_w32(vpe, im, ltq_icu_r32(vpe, im, LTQ_ICU_IER) | BIT(offset),
      LTQ_ICU_IER);

 raw_spin_unlock_irqrestore(&ltq_icu_lock, flags);
}
