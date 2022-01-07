
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int ADM5120_INTC_IRQ_BASE ;


 int EINVAL ;
 int INTC_REG_INT_MODE ;



 unsigned int IRQ_TYPE_SENSE_MASK ;
 unsigned long intc_read_reg (int ) ;
 int intc_write_reg (int ,unsigned long) ;

__attribute__((used)) static int adm5120_intc_irq_set_type(struct irq_data *d, unsigned int flow_type)
{
 unsigned int irq = d->irq;
 unsigned int sense;
 unsigned long mode;
 int err = 0;

 sense = flow_type & (IRQ_TYPE_SENSE_MASK);
 switch (sense) {
 case 128:
 case 130:
  break;
 case 129:
  switch (irq) {
  case 132:
  case 131:
   break;
  default:
   err = -EINVAL;
   break;
  }
  break;
 default:
  err = -EINVAL;
  break;
 }

 if (err)
  return err;

 switch (irq) {
 case 132:
 case 131:
  mode = intc_read_reg(INTC_REG_INT_MODE);
  if (sense == 129)
   mode |= (1 << (irq - ADM5120_INTC_IRQ_BASE));
  else
   mode &= ~(1 << (irq - ADM5120_INTC_IRQ_BASE));

  intc_write_reg(INTC_REG_INT_MODE, mode);
  break;
 }

 return 0;
}
