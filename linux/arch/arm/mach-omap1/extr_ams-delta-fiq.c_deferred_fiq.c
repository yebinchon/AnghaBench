
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int irq; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* irq_unmask ) (struct irq_data*) ;} ;


 int AMS_DELTA_GPIO_PIN_HOOK_SWITCH ;
 int AMS_DELTA_GPIO_PIN_KEYBRD_CLK ;
 int FIQ_CNT_INT_00 ;
 int IRQ_HANDLED ;
 int WARN_ON_ONCE (int) ;
 int* fiq_buffer ;
 int generic_handle_irq (int) ;
 TYPE_1__* irq_chip ;
 int* irq_counter ;
 struct irq_data** irq_data ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static irqreturn_t deferred_fiq(int irq, void *dev_id)
{
 struct irq_data *d;
 int gpio, irq_num, fiq_count;





 for (gpio = AMS_DELTA_GPIO_PIN_KEYBRD_CLK;
   gpio <= AMS_DELTA_GPIO_PIN_HOOK_SWITCH; gpio++) {
  d = irq_data[gpio];
  irq_num = d->irq;
  fiq_count = fiq_buffer[FIQ_CNT_INT_00 + gpio];

  if (irq_counter[gpio] < fiq_count &&
    gpio != AMS_DELTA_GPIO_PIN_KEYBRD_CLK) {





   if (!WARN_ON_ONCE(!irq_chip->irq_unmask))
    irq_chip->irq_unmask(d);
  }
  for (; irq_counter[gpio] < fiq_count; irq_counter[gpio]++)
   generic_handle_irq(irq_num);
 }
 return IRQ_HANDLED;
}
