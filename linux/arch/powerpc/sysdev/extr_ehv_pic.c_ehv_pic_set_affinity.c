
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct cpumask {int dummy; } ;


 int IRQ_SET_MASK_OK ;
 int ehv_pic_lock ;
 int ev_int_get_config (unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int ev_int_set_config (unsigned int,unsigned int,unsigned int,int) ;
 int irq_choose_cpu (struct cpumask const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int virq_to_hw (int ) ;

int ehv_pic_set_affinity(struct irq_data *d, const struct cpumask *dest,
    bool force)
{
 unsigned int src = virq_to_hw(d->irq);
 unsigned int config, prio, cpu_dest;
 int cpuid = irq_choose_cpu(dest);
 unsigned long flags;

 spin_lock_irqsave(&ehv_pic_lock, flags);
 ev_int_get_config(src, &config, &prio, &cpu_dest);
 ev_int_set_config(src, config, prio, cpuid);
 spin_unlock_irqrestore(&ehv_pic_lock, flags);

 return IRQ_SET_MASK_OK;
}
