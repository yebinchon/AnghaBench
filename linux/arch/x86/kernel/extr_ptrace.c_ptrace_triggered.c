
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_struct {int debugreg6; struct perf_event** ptrace_bps; } ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_event {int dummy; } ;
struct TYPE_2__ {struct thread_struct thread; } ;


 int DR_TRAP0 ;
 int HBP_NUM ;
 TYPE_1__* current ;

__attribute__((used)) static void ptrace_triggered(struct perf_event *bp,
        struct perf_sample_data *data,
        struct pt_regs *regs)
{
 int i;
 struct thread_struct *thread = &(current->thread);





 for (i = 0; i < HBP_NUM; i++) {
  if (thread->ptrace_bps[i] == bp)
   break;
 }

 thread->debugreg6 |= (DR_TRAP0 << i);
}
