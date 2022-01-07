
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int TAINT_DIE ;
 int add_taint (int ,int ) ;
 int arch_spin_unlock (int *) ;
 int bust_spinlocks (int ) ;
 int crash_kexec (struct pt_regs*) ;
 int current ;
 int die_lock ;
 int die_nest_count ;
 int die_owner ;
 int do_exit (int) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ kexec_should_crash (int ) ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int raw_local_irq_restore (unsigned long) ;

__attribute__((used)) static void oops_end(unsigned long flags, struct pt_regs *regs, int signr)
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

 if (in_interrupt())
  panic("Fatal exception in interrupt");
 if (panic_on_oops)
  panic("Fatal exception");
 if (signr)
  do_exit(signr);
}
