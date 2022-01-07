
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int EXT_ENABLE_REG ;
 int master_outb (int ,int ) ;
 int mext_disabled ;
 int pr_info (char*,int) ;

void q40_irq_disable(struct irq_data *data)
{
 unsigned int irq = data->irq;






 if (irq >= 5 && irq <= 15) {
  master_outb(0, EXT_ENABLE_REG);
  mext_disabled++;
  if (mext_disabled > 1)
   pr_info("disable_irq nesting count %d\n",
    mext_disabled);
 }
}
