
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {scalar_t__ ptrace_dr7; scalar_t__ debugreg6; int ** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;


 int HBP_NUM ;
 int unregister_hw_breakpoint (int *) ;

void flush_ptrace_hw_breakpoint(struct task_struct *tsk)
{
 int i;
 struct thread_struct *t = &tsk->thread;

 for (i = 0; i < HBP_NUM; i++) {
  unregister_hw_breakpoint(t->ptrace_bps[i]);
  t->ptrace_bps[i] = ((void*)0);
 }

 t->debugreg6 = 0;
 t->ptrace_dr7 = 0;
}
