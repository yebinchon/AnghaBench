
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int int_code; } ;


 int DIE_OOPS ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int add_taint (int ,int ) ;
 int bust_spinlocks (int) ;
 int console_verbose () ;
 scalar_t__ debug_pagealloc_enabled () ;
 int debug_stop_all () ;
 int die_lock ;
 int do_exit (int ) ;
 scalar_t__ in_interrupt () ;
 int lgr_info_log () ;
 int notify_die (int ,char const*,struct pt_regs*,int ,int,int ) ;
 int oops_enter () ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int pr_cont (char*) ;
 int print_modules () ;
 int printk (char*,char const*,int,int,int) ;
 int show_regs (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(struct pt_regs *regs, const char *str)
{
 static int die_counter;

 oops_enter();
 lgr_info_log();
 debug_stop_all();
 console_verbose();
 spin_lock_irq(&die_lock);
 bust_spinlocks(1);
 printk("%s: %04x ilc:%d [#%d] ", str, regs->int_code & 0xffff,
        regs->int_code >> 17, ++die_counter);



 pr_cont("SMP ");
 if (debug_pagealloc_enabled())
  pr_cont("DEBUG_PAGEALLOC");
 pr_cont("\n");
 notify_die(DIE_OOPS, str, regs, 0, regs->int_code & 0xffff, SIGSEGV);
 print_modules();
 show_regs(regs);
 bust_spinlocks(0);
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 spin_unlock_irq(&die_lock);
 if (in_interrupt())
  panic("Fatal exception in interrupt");
 if (panic_on_oops)
  panic("Fatal exception: panic_on_oops");
 oops_exit();
 do_exit(SIGSEGV);
}
