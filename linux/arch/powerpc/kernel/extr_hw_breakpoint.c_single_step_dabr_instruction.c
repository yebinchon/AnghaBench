
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_event {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;
struct arch_hw_breakpoint {int type; } ;
struct TYPE_3__ {struct perf_event* last_hit_ubp; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int HW_BRK_TYPE_EXTRANEOUS_IRQ ;
 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int TIF_SINGLESTEP ;
 int __set_breakpoint (struct arch_hw_breakpoint*) ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 TYPE_2__* current ;
 int perf_bp_event (struct perf_event*,struct pt_regs*) ;
 scalar_t__ test_thread_flag (int ) ;

__attribute__((used)) static int single_step_dabr_instruction(struct die_args *args)
{
 struct pt_regs *regs = args->regs;
 struct perf_event *bp = ((void*)0);
 struct arch_hw_breakpoint *info;

 bp = current->thread.last_hit_ubp;




 if (!bp)
  return NOTIFY_DONE;

 info = counter_arch_bp(bp);





 if (!(info->type & HW_BRK_TYPE_EXTRANEOUS_IRQ))
  perf_bp_event(bp, regs);

 __set_breakpoint(info);
 current->thread.last_hit_ubp = ((void*)0);





 if (test_thread_flag(TIF_SINGLESTEP))
  return NOTIFY_DONE;

 return NOTIFY_STOP;
}
