
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {struct perf_event** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct perf_event_attr {unsigned long bp_addr; int disabled; int bp_type; int bp_len; } ;
struct perf_event {struct perf_event_attr attr; } ;


 int HW_BREAKPOINT_LEN_2 ;
 int HW_BREAKPOINT_R ;
 scalar_t__ IS_ERR (struct perf_event*) ;
 int PTR_ERR (struct perf_event*) ;
 int modify_user_hw_breakpoint (struct perf_event*,struct perf_event_attr*) ;
 int ptrace_breakpoint_init (struct perf_event_attr*) ;
 int ptrace_triggered ;
 struct perf_event* register_user_hw_breakpoint (struct perf_event_attr*,int ,int *,struct task_struct*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_single_step(struct task_struct *tsk, unsigned long addr)
{
 struct thread_struct *thread = &tsk->thread;
 struct perf_event *bp;
 struct perf_event_attr attr;

 bp = thread->ptrace_bps[0];
 if (!bp) {
  ptrace_breakpoint_init(&attr);

  attr.bp_addr = addr;
  attr.bp_len = HW_BREAKPOINT_LEN_2;
  attr.bp_type = HW_BREAKPOINT_R;

  bp = register_user_hw_breakpoint(&attr, ptrace_triggered,
       ((void*)0), tsk);
  if (IS_ERR(bp))
   return PTR_ERR(bp);

  thread->ptrace_bps[0] = bp;
 } else {
  int err;

  attr = bp->attr;
  attr.bp_addr = addr;

  attr.disabled = 0;
  err = modify_user_hw_breakpoint(bp, &attr);
  if (unlikely(err))
   return err;
 }

 return 0;
}
