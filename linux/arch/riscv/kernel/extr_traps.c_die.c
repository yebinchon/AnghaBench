
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int scause; } ;


 int DIE_OOPS ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int NOTIFY_STOP ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int add_taint (int ,int ) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 int die_lock ;
 int do_exit (int ) ;
 scalar_t__ in_interrupt () ;
 int notify_die (int ,char const*,struct pt_regs*,int ,int ,int ) ;
 int oops_enter () ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int pr_emerg (char*,char const*,int) ;
 int print_modules () ;
 int show_regs (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(struct pt_regs *regs, const char *str)
{
 static int die_counter;
 int ret;

 oops_enter();

 spin_lock_irq(&die_lock);
 console_verbose();
 bust_spinlocks(1);

 pr_emerg("%s [#%d]\n", str, ++die_counter);
 print_modules();
 show_regs(regs);

 ret = notify_die(DIE_OOPS, str, regs, 0, regs->scause, SIGSEGV);

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
