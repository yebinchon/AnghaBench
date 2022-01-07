
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int ps; scalar_t__ pc; } ;
struct TYPE_3__ {int comm; } ;


 int LOCKDEP_NOW_UNRELIABLE ;
 int SIGSEGV ;
 int TAINT_DIE ;
 int TIF_DIE_IF_KERNEL ;
 int add_taint (int ,int ) ;
 TYPE_1__* current ;
 int dik_show_code (unsigned int*) ;
 int dik_show_regs (struct pt_regs*,unsigned long*) ;
 int dik_show_trace (unsigned long*) ;
 int do_exit (int ) ;
 int hard_smp_processor_id () ;
 int local_irq_enable () ;
 int printk (char*,...) ;
 int task_pid_nr (TYPE_1__*) ;
 scalar_t__ test_and_set_thread_flag (int ) ;

void
die_if_kernel(char * str, struct pt_regs *regs, long err, unsigned long *r9_15)
{
 if (regs->ps & 8)
  return;



 printk("%s(%d): %s %ld\n", current->comm, task_pid_nr(current), str, err);
 dik_show_regs(regs, r9_15);
 add_taint(TAINT_DIE, LOCKDEP_NOW_UNRELIABLE);
 dik_show_trace((unsigned long *)(regs+1));
 dik_show_code((unsigned int *)regs->pc);

 if (test_and_set_thread_flag (TIF_DIE_IF_KERNEL)) {
  printk("die_if_kernel recursion detected.\n");
  local_irq_enable();
  while (1);
 }
 do_exit(SIGSEGV);
}
