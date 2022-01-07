
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {unsigned long dar; } ;
struct TYPE_2__ {unsigned long bp_addr; unsigned long bp_len; } ;
struct perf_event {scalar_t__ overflow_handler; TYPE_1__ attr; } ;
struct die_args {struct pt_regs* regs; } ;
struct arch_hw_breakpoint {int type; int address; } ;


 int CONFIG_PPC_8xx ;
 int HW_BRK_TYPE_EXTRANEOUS_IRQ ;
 int IS_ENABLED (int ) ;
 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int __set_breakpoint (struct arch_hw_breakpoint*) ;
 struct perf_event* __this_cpu_read (int ) ;
 int bp_per_reg ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 int hw_breakpoint_disable () ;
 int perf_bp_event (struct perf_event*,struct pt_regs*) ;
 scalar_t__ ptrace_triggered ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stepping_handler (struct pt_regs*,struct perf_event*,int ) ;

int hw_breakpoint_handler(struct die_args *args)
{
 int rc = NOTIFY_STOP;
 struct perf_event *bp;
 struct pt_regs *regs = args->regs;
 struct arch_hw_breakpoint *info;
 unsigned long dar = regs->dar;


 hw_breakpoint_disable();







 rcu_read_lock();

 bp = __this_cpu_read(bp_per_reg);
 if (!bp) {
  rc = NOTIFY_DONE;
  goto out;
 }
 info = counter_arch_bp(bp);







 if (bp->overflow_handler == ptrace_triggered) {
  perf_bp_event(bp, regs);
  rc = NOTIFY_DONE;
  goto out;
 }







 info->type &= ~HW_BRK_TYPE_EXTRANEOUS_IRQ;
 if (!((bp->attr.bp_addr <= dar) &&
       (dar - bp->attr.bp_addr < bp->attr.bp_len)))
  info->type |= HW_BRK_TYPE_EXTRANEOUS_IRQ;

 if (!IS_ENABLED(CONFIG_PPC_8xx) && !stepping_handler(regs, bp, info->address))
  goto out;





 if (!(info->type & HW_BRK_TYPE_EXTRANEOUS_IRQ))
  perf_bp_event(bp, regs);

 __set_breakpoint(info);
out:
 rcu_read_unlock();
 return rc;
}
