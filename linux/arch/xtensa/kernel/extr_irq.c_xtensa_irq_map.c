
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {struct irq_chip* host_data; } ;
struct irq_chip {int dummy; } ;
typedef int irq_hw_number_t ;


 int IRQ_LEVEL ;
 int XCHAL_INTTYPE_MASK_EXTERN_EDGE ;
 int XCHAL_INTTYPE_MASK_EXTERN_LEVEL ;
 int XCHAL_INTTYPE_MASK_PROFILING ;
 int XCHAL_INTTYPE_MASK_SOFTWARE ;
 int XCHAL_INTTYPE_MASK_TIMER ;
 int handle_edge_irq ;
 int handle_level_irq ;
 int handle_percpu_irq ;
 int handle_simple_irq ;
 int irq_clear_status_flags (unsigned int,int ) ;
 int irq_set_chip_and_handler_name (unsigned int,struct irq_chip*,int ,char*) ;
 int irq_set_status_flags (unsigned int,int ) ;

int xtensa_irq_map(struct irq_domain *d, unsigned int irq,
  irq_hw_number_t hw)
{
 struct irq_chip *irq_chip = d->host_data;
 u32 mask = 1 << hw;

 if (mask & XCHAL_INTTYPE_MASK_SOFTWARE) {
  irq_set_chip_and_handler_name(irq, irq_chip,
    handle_simple_irq, "level");
  irq_set_status_flags(irq, IRQ_LEVEL);
 } else if (mask & XCHAL_INTTYPE_MASK_EXTERN_EDGE) {
  irq_set_chip_and_handler_name(irq, irq_chip,
    handle_edge_irq, "edge");
  irq_clear_status_flags(irq, IRQ_LEVEL);
 } else if (mask & XCHAL_INTTYPE_MASK_EXTERN_LEVEL) {
  irq_set_chip_and_handler_name(irq, irq_chip,
    handle_level_irq, "level");
  irq_set_status_flags(irq, IRQ_LEVEL);
 } else if (mask & XCHAL_INTTYPE_MASK_TIMER) {
  irq_set_chip_and_handler_name(irq, irq_chip,
    handle_percpu_irq, "timer");
  irq_clear_status_flags(irq, IRQ_LEVEL);






 } else {

  irq_set_chip_and_handler_name(irq, irq_chip,
    handle_level_irq, "level");
  irq_set_status_flags(irq, IRQ_LEVEL);
 }
 return 0;
}
