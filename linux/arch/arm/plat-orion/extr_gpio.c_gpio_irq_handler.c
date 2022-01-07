
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int ngpio; } ;
struct orion_gpio_chip {int secondary_irq_base; TYPE_1__ chip; } ;
struct irq_desc {int dummy; } ;


 int GPIO_DATA_IN (struct orion_gpio_chip*) ;
 int GPIO_EDGE_CAUSE (struct orion_gpio_chip*) ;
 int GPIO_EDGE_MASK (struct orion_gpio_chip*) ;
 int GPIO_IN_POL (struct orion_gpio_chip*) ;
 int GPIO_LEVEL_MASK (struct orion_gpio_chip*) ;
 int IRQ_TYPE_EDGE_BOTH ;
 int IRQ_TYPE_SENSE_MASK ;
 int generic_handle_irq (int) ;
 struct orion_gpio_chip* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_get_trigger_type (int) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void gpio_irq_handler(struct irq_desc *desc)
{
 struct orion_gpio_chip *ochip = irq_desc_get_handler_data(desc);
 u32 cause, type;
 int i;

 if (ochip == ((void*)0))
  return;

 cause = readl(GPIO_DATA_IN(ochip)) & readl(GPIO_LEVEL_MASK(ochip));
 cause |= readl(GPIO_EDGE_CAUSE(ochip)) & readl(GPIO_EDGE_MASK(ochip));

 for (i = 0; i < ochip->chip.ngpio; i++) {
  int irq;

  irq = ochip->secondary_irq_base + i;

  if (!(cause & (1 << i)))
   continue;

  type = irq_get_trigger_type(irq);
  if ((type & IRQ_TYPE_SENSE_MASK) == IRQ_TYPE_EDGE_BOTH) {

   u32 polarity;

   polarity = readl(GPIO_IN_POL(ochip));
   polarity ^= 1 << i;
   writel(polarity, GPIO_IN_POL(ochip));
  }
  generic_handle_irq(irq);
 }
}
