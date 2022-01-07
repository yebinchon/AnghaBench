
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ interrupts_enabled (struct pt_regs*) ;
 int preempt_enable_no_resched () ;
 int rcu_nmi_exit () ;
 int trace_hardirqs_on () ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static void debug_exception_exit(struct pt_regs *regs)
{
 preempt_enable_no_resched();

 if (!user_mode(regs))
  rcu_nmi_exit();

 if (interrupts_enabled(regs))
  trace_hardirqs_on();
}
