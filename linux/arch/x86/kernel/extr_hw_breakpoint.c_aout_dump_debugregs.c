
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct user {int* u_debugreg; } ;
struct thread_struct {int debugreg6; struct perf_event** ptrace_bps; } ;
struct TYPE_3__ {int bp_addr; int disabled; } ;
struct perf_event {TYPE_1__ attr; } ;
struct arch_hw_breakpoint {int type; int len; } ;
struct TYPE_4__ {struct thread_struct thread; } ;


 int HBP_NUM ;
 struct arch_hw_breakpoint* counter_arch_bp (struct perf_event*) ;
 TYPE_2__* current ;
 int encode_dr7 (int,int ,int ) ;

void aout_dump_debugregs(struct user *dump)
{
 int i;
 int dr7 = 0;
 struct perf_event *bp;
 struct arch_hw_breakpoint *info;
 struct thread_struct *thread = &current->thread;

 for (i = 0; i < HBP_NUM; i++) {
  bp = thread->ptrace_bps[i];

  if (bp && !bp->attr.disabled) {
   dump->u_debugreg[i] = bp->attr.bp_addr;
   info = counter_arch_bp(bp);
   dr7 |= encode_dr7(i, info->len, info->type);
  } else {
   dump->u_debugreg[i] = 0;
  }
 }

 dump->u_debugreg[4] = 0;
 dump->u_debugreg[5] = 0;
 dump->u_debugreg[6] = current->thread.debugreg6;

 dump->u_debugreg[7] = dr7;
}
