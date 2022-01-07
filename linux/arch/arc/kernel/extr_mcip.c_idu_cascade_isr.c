
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;
struct irq_chip {int dummy; } ;
typedef scalar_t__ irq_hw_number_t ;


 scalar_t__ FIRST_EXT_IRQ ;
 int chained_irq_enter (struct irq_chip*,struct irq_desc*) ;
 int chained_irq_exit (struct irq_chip*,struct irq_desc*) ;
 int generic_handle_irq (int ) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_desc_get_irq_data (struct irq_desc*) ;
 int irq_find_mapping (struct irq_domain*,scalar_t__) ;
 scalar_t__ irqd_to_hwirq (int ) ;

__attribute__((used)) static void idu_cascade_isr(struct irq_desc *desc)
{
 struct irq_domain *idu_domain = irq_desc_get_handler_data(desc);
 struct irq_chip *core_chip = irq_desc_get_chip(desc);
 irq_hw_number_t core_hwirq = irqd_to_hwirq(irq_desc_get_irq_data(desc));
 irq_hw_number_t idu_hwirq = core_hwirq - FIRST_EXT_IRQ;

 chained_irq_enter(core_chip, desc);
 generic_handle_irq(irq_find_mapping(idu_domain, idu_hwirq));
 chained_irq_exit(core_chip, desc);
}
