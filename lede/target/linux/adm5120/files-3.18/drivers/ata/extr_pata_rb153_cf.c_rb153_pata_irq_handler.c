
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rb153_cf_info {int irq; int frozen; int gpio_line; } ;
struct ata_host {struct rb153_cf_info* private_data; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int IRQ_TYPE_LEVEL_LOW ;
 int ata_sff_interrupt (int,void*) ;
 scalar_t__ gpio_get_value (int ) ;
 int irq_set_irq_type (int ,int ) ;

__attribute__((used)) static irqreturn_t rb153_pata_irq_handler(int irq, void *dev_instance)
{
 struct ata_host *ah = dev_instance;
 struct rb153_cf_info *info = ah->private_data;

 if (gpio_get_value(info->gpio_line)) {
  irq_set_irq_type(info->irq, IRQ_TYPE_LEVEL_LOW);
  if (!info->frozen)
   ata_sff_interrupt(irq, dev_instance);
 } else {
  irq_set_irq_type(info->irq, IRQ_TYPE_LEVEL_HIGH);
 }

 return IRQ_HANDLED;
}
