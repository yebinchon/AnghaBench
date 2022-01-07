
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct irq_desc {int dummy; } ;


 int check_stack_overflow () ;
 int execute_on_irq_stack (int,struct irq_desc*) ;
 int generic_handle_irq_desc (struct irq_desc*) ;
 int print_stack_overflow () ;
 scalar_t__ unlikely (int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void handle_irq(struct irq_desc *desc, struct pt_regs *regs)
{
 int overflow = check_stack_overflow();

 if (user_mode(regs) || !execute_on_irq_stack(overflow, desc)) {
  if (unlikely(overflow))
   print_stack_overflow();
  generic_handle_irq_desc(desc);
 }
}
