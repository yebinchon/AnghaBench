
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 int EXT_ENABLE_REG ;
 int master_outb (int,int ) ;
 scalar_t__ mext_disabled ;
 int pr_warn (char*) ;

void q40_irq_enable(struct irq_data *data)
{
 unsigned int irq = data->irq;

 if (irq >= 5 && irq <= 15) {
  mext_disabled--;
  if (mext_disabled > 0)
   pr_warn("q40_irq_enable : nested disable/enable\n");
  if (mext_disabled == 0)
   master_outb(1, EXT_ENABLE_REG);
 }
}
