
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ hwirq; } ;


 unsigned int IRQ_TYPE_EDGE_BOTH ;

 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;

 unsigned int IRQ_TYPE_LEVEL_MASK ;
 scalar_t__ SYS_NIRQ1_EXT_SYS_IRQ_1 ;
 scalar_t__ SYS_NIRQ2_EXT_SYS_IRQ_2 ;
 int irq_chip_set_type_parent (struct irq_data*,unsigned int) ;
 int pr_warn (char*,scalar_t__) ;

__attribute__((used)) static int wakeupgen_irq_set_type(struct irq_data *d, unsigned int type)
{
 bool inverted = 0;

 switch (type) {
 case 128:
  type &= ~IRQ_TYPE_LEVEL_MASK;
  type |= IRQ_TYPE_LEVEL_HIGH;
  inverted = 1;
  break;
 case 129:
  type &= ~IRQ_TYPE_EDGE_BOTH;
  type |= IRQ_TYPE_EDGE_RISING;
  inverted = 1;
  break;
 default:
  break;
 }

 if (inverted && d->hwirq != SYS_NIRQ1_EXT_SYS_IRQ_1 &&
     d->hwirq != SYS_NIRQ2_EXT_SYS_IRQ_2)
  pr_warn("wakeupgen: irq%li polarity inverted in dts\n",
   d->hwirq);

 return irq_chip_set_type_parent(d, type);
}
