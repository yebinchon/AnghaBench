
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {int pid; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int MSEC_PER_SEC ;
 int TAINT_DIE ;
 int TRAP (struct pt_regs*) ;
 int add_taint (int ,int ) ;
 int arch_spin_unlock (int *) ;
 int bust_spinlocks (int ) ;
 int crash_fadump (struct pt_regs*,char*) ;
 int crash_kexec (struct pt_regs*) ;
 TYPE_1__* current ;
 int die_lock ;
 int die_nest_count ;
 int die_owner ;
 int do_exit (int) ;
 scalar_t__ in_interrupt () ;
 scalar_t__ is_global_init (TYPE_1__*) ;
 scalar_t__ kexec_should_crash (TYPE_1__*) ;
 int mdelay (int ) ;
 int oops_exit () ;
 int panic (char*) ;
 scalar_t__ panic_on_oops ;
 int printk (char*) ;
 int raw_local_irq_restore (unsigned long) ;

__attribute__((used)) static void oops_end(unsigned long flags, struct pt_regs *regs,
          int signr)
{
 bust_spinlocks(0);
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 die_nest_count--;
 oops_exit();
 printk("\n");
 if (!die_nest_count) {

  die_owner = -1;
  arch_spin_unlock(&die_lock);
 }
 raw_local_irq_restore(flags);




 if (TRAP(regs) == 0x100)
  return;

 crash_fadump(regs, "die oops");

 if (kexec_should_crash(current))
  crash_kexec(regs);

 if (!signr)
  return;







 if (in_interrupt() || panic_on_oops || !current->pid ||
     is_global_init(current)) {
  mdelay(MSEC_PER_SEC);
 }

 if (panic_on_oops)
  panic("Fatal exception");
 do_exit(signr);
}
