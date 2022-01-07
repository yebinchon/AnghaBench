
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_stack {int dummy; } ;


 int __do_softirq ;
 struct irq_stack* __this_cpu_read (int ) ;
 int call_on_stack (int ,int *) ;
 int current_stack_pointer ;
 int softirq_stack_ptr ;

void do_softirq_own_stack(void)
{
 struct irq_stack *irqstk;
 u32 *isp, *prev_esp;

 irqstk = __this_cpu_read(softirq_stack_ptr);


 isp = (u32 *) ((char *)irqstk + sizeof(*irqstk));


 prev_esp = (u32 *)irqstk;
 *prev_esp = current_stack_pointer;

 call_on_stack(__do_softirq, isp);
}
