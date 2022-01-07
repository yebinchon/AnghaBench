
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__* areg; } ;


 int CONFIG_PREEMPT ;
 scalar_t__ IS_ENABLED (int ) ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int TAINT_DIE ;
 int add_taint (int ,int ) ;
 int console_verbose () ;
 int die_lock ;
 int do_exit (long) ;
 scalar_t__ in_interrupt () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int pr_info (char*,char const*,long,int,char*) ;
 int show_regs (struct pt_regs*) ;
 int show_stack (int *,unsigned long*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int user_mode (struct pt_regs*) ;

void die(const char * str, struct pt_regs * regs, long err)
{
 static int die_counter;

 console_verbose();
 spin_lock_irq(&die_lock);

 pr_info("%s: sig: %ld [#%d]%s\n", str, err, ++die_counter,
  IS_ENABLED(CONFIG_PREEMPT) ? " PREEMPT" : "");
 show_regs(regs);
 if (!user_mode(regs))
  show_stack(((void*)0), (unsigned long*)regs->areg[1]);

 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 spin_unlock_irq(&die_lock);

 if (in_interrupt())
  panic("Fatal exception in interrupt");

 if (panic_on_oops)
  panic("Fatal exception");

 do_exit(err);
}
