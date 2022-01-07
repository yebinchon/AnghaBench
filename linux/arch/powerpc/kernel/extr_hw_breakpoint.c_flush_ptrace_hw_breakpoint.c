
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int ** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;


 int unregister_hw_breakpoint (int *) ;

void flush_ptrace_hw_breakpoint(struct task_struct *tsk)
{
 struct thread_struct *t = &tsk->thread;

 unregister_hw_breakpoint(t->ptrace_bps[0]);
 t->ptrace_bps[0] = ((void*)0);
}
