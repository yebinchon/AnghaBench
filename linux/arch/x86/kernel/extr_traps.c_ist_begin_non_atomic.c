
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int BUG_ON (int) ;
 int on_thread_stack () ;
 int preempt_enable_no_resched () ;
 int user_mode (struct pt_regs*) ;

void ist_begin_non_atomic(struct pt_regs *regs)
{
 BUG_ON(!user_mode(regs));






 BUG_ON(!on_thread_stack());

 preempt_enable_no_resched();
}
