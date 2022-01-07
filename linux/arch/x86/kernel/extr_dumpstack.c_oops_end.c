
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int SHOW_REGS_ALL ;
 int TAINT_DIE ;
 int __show_regs (int *,int ) ;
 int add_taint (int ,int ) ;
 int arch_spin_unlock (int *) ;
 int bust_spinlocks (int ) ;
 int crash_kexec (struct pt_regs*) ;
 int current ;
 int die_lock ;
 int die_nest_count ;
 int die_owner ;
 int exec_summary_regs ;
 scalar_t__ in_interrupt () ;
 int kasan_unpoison_task_stack (int ) ;
 scalar_t__ kexec_should_crash (int ) ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int raw_local_irq_restore (unsigned long) ;
 int rewind_stack_do_exit (int) ;

void oops_end(unsigned long flags, struct pt_regs *regs, int signr)
{
 if (regs && kexec_should_crash(current))
  crash_kexec(regs);

 bust_spinlocks(0);
 die_owner = -1;
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 die_nest_count--;
 if (!die_nest_count)

  arch_spin_unlock(&die_lock);
 raw_local_irq_restore(flags);
 oops_exit();


 __show_regs(&exec_summary_regs, SHOW_REGS_ALL);

 if (!signr)
  return;
 if (in_interrupt())
  panic("Fatal exception in interrupt");
 if (panic_on_oops)
  panic("Fatal exception");
 kasan_unpoison_task_stack(current);
 rewind_stack_do_exit(signr);
}
