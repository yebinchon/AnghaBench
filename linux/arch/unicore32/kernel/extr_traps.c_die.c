
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct pt_regs {int dummy; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int NOTIFY_STOP ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int __die (char const*,int,struct thread_info*,struct pt_regs*) ;
 int add_taint (int ,int ) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 struct thread_info* current_thread_info () ;
 int die_lock ;
 int do_exit (int ) ;
 scalar_t__ in_interrupt () ;
 int oops_enter () ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(const char *str, struct pt_regs *regs, int err)
{
 struct thread_info *thread = current_thread_info();
 int ret;

 oops_enter();

 spin_lock_irq(&die_lock);
 console_verbose();
 bust_spinlocks(1);
 ret = __die(str, err, thread, regs);

 bust_spinlocks(0);
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 spin_unlock_irq(&die_lock);
 oops_exit();

 if (in_interrupt())
  panic("Fatal exception in interrupt");
 if (panic_on_oops)
  panic("Fatal exception");
 if (ret != NOTIFY_STOP)
  do_exit(SIGSEGV);
}
