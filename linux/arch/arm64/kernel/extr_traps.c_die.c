
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int NOTIFY_STOP ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int __die (char const*,int,struct pt_regs*) ;
 int add_taint (int ,int ) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 int crash_kexec (struct pt_regs*) ;
 int current ;
 int die_lock ;
 int do_exit (int ) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ kexec_should_crash (int ) ;
 int oops_enter () ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void die(const char *str, struct pt_regs *regs, int err)
{
 int ret;
 unsigned long flags;

 raw_spin_lock_irqsave(&die_lock, flags);

 oops_enter();

 console_verbose();
 bust_spinlocks(1);
 ret = __die(str, err, regs);

 if (regs && kexec_should_crash(current))
  crash_kexec(regs);

 bust_spinlocks(0);
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 oops_exit();

 if (in_interrupt())
  panic("Fatal exception in interrupt");
 if (panic_on_oops)
  panic("Fatal exception");

 raw_spin_unlock_irqrestore(&die_lock, flags);

 if (ret != NOTIFY_STOP)
  do_exit(SIGSEGV);
}
