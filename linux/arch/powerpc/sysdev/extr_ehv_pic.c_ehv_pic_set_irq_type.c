
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 unsigned int EHV_PIC_INFO (int ) ;
 int IRQ_SET_MASK_OK_NOCOPY ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_NONE ;
 int VECPRI_POLARITY_MASK ;
 int VECPRI_SENSE_MASK ;
 int ehv_pic_lock ;
 unsigned int ehv_pic_type_to_vecpri (unsigned int) ;
 int ev_int_get_config (unsigned int,unsigned int*,unsigned int*,unsigned int*) ;
 int ev_int_set_config (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int irqd_set_trigger_type (struct irq_data*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned int virq_to_hw (int ) ;

int ehv_pic_set_irq_type(struct irq_data *d, unsigned int flow_type)
{
 unsigned int src = virq_to_hw(d->irq);
 unsigned int vecpri, vold, vnew, prio, cpu_dest;
 unsigned long flags;

 if (flow_type == IRQ_TYPE_NONE)
  flow_type = IRQ_TYPE_LEVEL_LOW;

 irqd_set_trigger_type(d, flow_type);

 vecpri = ehv_pic_type_to_vecpri(flow_type);

 spin_lock_irqsave(&ehv_pic_lock, flags);
 ev_int_get_config(src, &vold, &prio, &cpu_dest);
 vnew = vold & ~(EHV_PIC_INFO(VECPRI_POLARITY_MASK) |
   EHV_PIC_INFO(VECPRI_SENSE_MASK));
 vnew |= vecpri;







 prio = 8;

 ev_int_set_config(src, vecpri, prio, cpu_dest);

 spin_unlock_irqrestore(&ehv_pic_lock, flags);
 return IRQ_SET_MASK_OK_NOCOPY;
}
