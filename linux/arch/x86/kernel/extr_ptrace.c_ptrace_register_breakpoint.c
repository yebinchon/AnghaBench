
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_attr {unsigned long bp_addr; } ;
struct perf_event {int dummy; } ;


 struct perf_event* ERR_PTR (int) ;
 int ptrace_breakpoint_init (struct perf_event_attr*) ;
 int ptrace_fill_bp_fields (struct perf_event_attr*,int,int,int) ;
 int ptrace_triggered ;
 struct perf_event* register_user_hw_breakpoint (struct perf_event_attr*,int ,int *,struct task_struct*) ;

__attribute__((used)) static struct perf_event *
ptrace_register_breakpoint(struct task_struct *tsk, int len, int type,
    unsigned long addr, bool disabled)
{
 struct perf_event_attr attr;
 int err;

 ptrace_breakpoint_init(&attr);
 attr.bp_addr = addr;

 err = ptrace_fill_bp_fields(&attr, len, type, disabled);
 if (err)
  return ERR_PTR(err);

 return register_user_hw_breakpoint(&attr, ptrace_triggered,
       ((void*)0), tsk);
}
