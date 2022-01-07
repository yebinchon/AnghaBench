
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int console_verbose () ;
 int die_lock ;
 int do_exit (long) ;
 int pr_warn (char*,char const*,long) ;
 int show_regs (struct pt_regs*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void die(const char *str, struct pt_regs *regs, long err)
{
 console_verbose();
 spin_lock_irq(&die_lock);
 pr_warn("Oops: %s, sig: %ld\n", str, err);
 show_regs(regs);
 spin_unlock_irq(&die_lock);




 do_exit(err);
}
