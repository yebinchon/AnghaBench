
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {int hwirq; } ;


 int EINVAL ;
 int IDU_M_TRIG_EDGE ;
 int IDU_M_TRIG_LEVEL ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int idu_set_mode (int ,int,int ,int,int ) ;
 int mcip_lock ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int idu_irq_set_type(struct irq_data *data, u32 type)
{
 unsigned long flags;





 if (type & ~(IRQ_TYPE_EDGE_RISING | IRQ_TYPE_LEVEL_HIGH))
  return -EINVAL;

 raw_spin_lock_irqsave(&mcip_lock, flags);

 idu_set_mode(data->hwirq, 1,
       type & IRQ_TYPE_EDGE_RISING ? IDU_M_TRIG_EDGE :
         IDU_M_TRIG_LEVEL,
       0, 0);

 raw_spin_unlock_irqrestore(&mcip_lock, flags);

 return 0;
}
