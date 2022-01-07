
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_TYPE_EDGE_RISING ;
 int cmx2xx_it8152_irq_demux ;
 int cmx2xx_it8152_irq_gpio ;
 int gpio_to_irq (int) ;
 int irq_set_chained_handler (int ,int ) ;
 int irq_set_irq_type (int ,int ) ;
 int it8152_init_irq () ;

void __cmx2xx_pci_init_irq(int irq_gpio)
{
 it8152_init_irq();

 cmx2xx_it8152_irq_gpio = irq_gpio;

 irq_set_irq_type(gpio_to_irq(irq_gpio), IRQ_TYPE_EDGE_RISING);

 irq_set_chained_handler(gpio_to_irq(irq_gpio),
    cmx2xx_it8152_irq_demux);
}
