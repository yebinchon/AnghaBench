
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;
struct cpumask {int dummy; } ;
typedef int cpumask_t ;


 int EINVAL ;
 unsigned int IDU_M_DISTRI_DEST ;
 unsigned int IDU_M_DISTRI_RR ;
 int IRQ_SET_MASK_OK ;
 int cpu_online_mask ;
 int cpumask_and (int *,struct cpumask const*,int ) ;
 unsigned int* cpumask_bits (int *) ;
 scalar_t__ ffs (unsigned int) ;
 scalar_t__ fls (unsigned int) ;
 int idu_set_dest (int ,unsigned int) ;
 int idu_set_mode (int ,int,int ,int,unsigned int) ;
 int mcip_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
idu_irq_set_affinity(struct irq_data *data, const struct cpumask *cpumask,
       bool force)
{
 unsigned long flags;
 cpumask_t online;
 unsigned int destination_bits;
 unsigned int distribution_mode;


 if (!cpumask_and(&online, cpumask, cpu_online_mask))
  return -EINVAL;

 raw_spin_lock_irqsave(&mcip_lock, flags);

 destination_bits = cpumask_bits(&online)[0];
 idu_set_dest(data->hwirq, destination_bits);

 if (ffs(destination_bits) == fls(destination_bits))
  distribution_mode = IDU_M_DISTRI_DEST;
 else
  distribution_mode = IDU_M_DISTRI_RR;

 idu_set_mode(data->hwirq, 0, 0, 1, distribution_mode);

 raw_spin_unlock_irqrestore(&mcip_lock, flags);

 return IRQ_SET_MASK_OK;
}
