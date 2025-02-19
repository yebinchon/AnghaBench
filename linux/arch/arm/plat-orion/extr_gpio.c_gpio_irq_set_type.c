
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct orion_gpio_chip {int secondary_irq_base; } ;
struct irq_data {int hwirq; } ;
struct irq_chip_type {int type; } ;
struct irq_chip_generic {struct orion_gpio_chip* private; } ;


 int EINVAL ;
 int GPIO_DATA_IN (struct orion_gpio_chip*) ;
 int GPIO_IN_POL (struct orion_gpio_chip*) ;
 int GPIO_IO_CONF (struct orion_gpio_chip*) ;
 int IRQ_TYPE_EDGE_BOTH ;
 int IRQ_TYPE_EDGE_FALLING ;
 int IRQ_TYPE_EDGE_RISING ;
 int IRQ_TYPE_LEVEL_HIGH ;
 int IRQ_TYPE_LEVEL_LOW ;
 int IRQ_TYPE_NONE ;
 int IRQ_TYPE_SENSE_MASK ;
 struct irq_chip_type* irq_data_get_chip_type (struct irq_data*) ;
 struct irq_chip_generic* irq_data_get_irq_chip_data (struct irq_data*) ;
 scalar_t__ irq_setup_alt_chip (struct irq_data*,int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int gpio_irq_set_type(struct irq_data *d, u32 type)
{
 struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 struct irq_chip_type *ct = irq_data_get_chip_type(d);
 struct orion_gpio_chip *ochip = gc->private;
 int pin;
 u32 u;

 pin = d->hwirq - ochip->secondary_irq_base;

 u = readl(GPIO_IO_CONF(ochip)) & (1 << pin);
 if (!u) {
  return -EINVAL;
 }

 type &= IRQ_TYPE_SENSE_MASK;
 if (type == IRQ_TYPE_NONE)
  return -EINVAL;


 if (!(ct->type & type))
  if (irq_setup_alt_chip(d, type))
   return -EINVAL;




 if (type == IRQ_TYPE_EDGE_RISING || type == IRQ_TYPE_LEVEL_HIGH) {
  u = readl(GPIO_IN_POL(ochip));
  u &= ~(1 << pin);
  writel(u, GPIO_IN_POL(ochip));
 } else if (type == IRQ_TYPE_EDGE_FALLING || type == IRQ_TYPE_LEVEL_LOW) {
  u = readl(GPIO_IN_POL(ochip));
  u |= 1 << pin;
  writel(u, GPIO_IN_POL(ochip));
 } else if (type == IRQ_TYPE_EDGE_BOTH) {
  u32 v;

  v = readl(GPIO_IN_POL(ochip)) ^ readl(GPIO_DATA_IN(ochip));




  u = readl(GPIO_IN_POL(ochip));
  if (v & (1 << pin))
   u |= 1 << pin;
  else
   u &= ~(1 << pin);
  writel(u, GPIO_IN_POL(ochip));
 }
 return 0;
}
