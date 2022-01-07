
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {int spurious_irqs; } ;
struct TYPE_3__ {unsigned int (* get_irq ) () ;} ;


 int __this_cpu_inc (int ) ;
 int check_stack_overflow () ;
 int generic_handle_irq (unsigned int) ;
 int irq_enter () ;
 int irq_exit () ;
 TYPE_2__ irq_stat ;
 int may_hard_irq_enable () ;
 TYPE_1__ ppc_md ;
 unsigned int stub1 () ;
 int trace_irq_entry (struct pt_regs*) ;
 int trace_irq_exit (struct pt_regs*) ;
 scalar_t__ unlikely (int) ;

void __do_irq(struct pt_regs *regs)
{
 unsigned int irq;

 irq_enter();

 trace_irq_entry(regs);

 check_stack_overflow();






 irq = ppc_md.get_irq();


 may_hard_irq_enable();


 if (unlikely(!irq))
  __this_cpu_inc(irq_stat.spurious_irqs);
 else
  generic_handle_irq(irq);

 trace_irq_exit(regs);

 irq_exit();
}
