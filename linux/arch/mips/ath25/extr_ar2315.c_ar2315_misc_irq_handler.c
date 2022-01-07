
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_domain {int dummy; } ;
struct irq_desc {int dummy; } ;


 int AR2315_IMR ;
 int AR2315_ISR ;
 int AR2315_ISR_GPIO ;
 int AR2315_ISR_WD ;
 unsigned int AR2315_MISC_IRQ_GPIO ;
 unsigned int AR2315_MISC_IRQ_WATCHDOG ;
 unsigned int __ffs (int) ;
 int ar2315_rst_reg_read (int ) ;
 int ar2315_rst_reg_write (int ,int ) ;
 int generic_handle_irq (unsigned int) ;
 struct irq_domain* irq_desc_get_handler_data (struct irq_desc*) ;
 unsigned int irq_find_mapping (struct irq_domain*,unsigned int) ;
 int spurious_interrupt () ;

__attribute__((used)) static void ar2315_misc_irq_handler(struct irq_desc *desc)
{
 u32 pending = ar2315_rst_reg_read(AR2315_ISR) &
        ar2315_rst_reg_read(AR2315_IMR);
 unsigned nr, misc_irq = 0;

 if (pending) {
  struct irq_domain *domain = irq_desc_get_handler_data(desc);

  nr = __ffs(pending);
  misc_irq = irq_find_mapping(domain, nr);
 }

 if (misc_irq) {
  if (nr == AR2315_MISC_IRQ_GPIO)
   ar2315_rst_reg_write(AR2315_ISR, AR2315_ISR_GPIO);
  else if (nr == AR2315_MISC_IRQ_WATCHDOG)
   ar2315_rst_reg_write(AR2315_ISR, AR2315_ISR_WD);
  generic_handle_irq(misc_irq);
 } else {
  spurious_interrupt();
 }
}
