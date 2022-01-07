
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;


 int INTC_REG_STATUS0 ;
 int __ffs (scalar_t__) ;
 int generic_handle_irq (int ) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 int irq_find_mapping (struct irq_domain*,int ) ;
 scalar_t__ rt_intc_r32 (int ) ;
 int spurious_interrupt () ;

__attribute__((used)) static void ralink_intc_irq_handler(struct irq_desc *desc)
{
 u32 pending = rt_intc_r32(INTC_REG_STATUS0);

 if (pending) {
  struct irq_domain *domain = irq_desc_get_handler_data(desc);
  generic_handle_irq(irq_find_mapping(domain, __ffs(pending)));
 } else {
  spurious_interrupt();
 }
}
