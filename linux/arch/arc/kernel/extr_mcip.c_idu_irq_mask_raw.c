
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irq_hw_number_t ;


 int CMD_IDU_SET_MASK ;
 int __mcip_cmd_data (int ,int ,int) ;
 int mcip_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void idu_irq_mask_raw(irq_hw_number_t hwirq)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&mcip_lock, flags);
 __mcip_cmd_data(CMD_IDU_SET_MASK, hwirq, 1);
 raw_spin_unlock_irqrestore(&mcip_lock, flags);
}
