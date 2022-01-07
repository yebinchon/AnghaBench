
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {struct perf_event** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct perf_event_attr {unsigned long bp_addr; } ;
struct perf_event {struct perf_event_attr attr; } ;


 scalar_t__ IS_ERR (struct perf_event*) ;
 int PTR_ERR (struct perf_event*) ;
 int X86_BREAKPOINT_LEN_1 ;
 int X86_BREAKPOINT_WRITE ;
 int modify_user_hw_breakpoint (struct perf_event*,struct perf_event_attr*) ;
 struct perf_event* ptrace_register_breakpoint (struct task_struct*,int ,int ,unsigned long,int) ;

__attribute__((used)) static int ptrace_set_breakpoint_addr(struct task_struct *tsk, int nr,
          unsigned long addr)
{
 struct thread_struct *t = &tsk->thread;
 struct perf_event *bp = t->ptrace_bps[nr];
 int err = 0;

 if (!bp) {
  bp = ptrace_register_breakpoint(tsk,
    X86_BREAKPOINT_LEN_1, X86_BREAKPOINT_WRITE,
    addr, 1);
  if (IS_ERR(bp))
   err = PTR_ERR(bp);
  else
   t->ptrace_bps[nr] = bp;
 } else {
  struct perf_event_attr attr = bp->attr;

  attr.bp_addr = addr;
  err = modify_user_hw_breakpoint(bp, &attr);
 }

 return err;
}
