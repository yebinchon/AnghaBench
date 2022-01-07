
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_struct {int ** ptrace_wp; int ** ptrace_bp; } ;
struct task_struct {struct thread_struct thread; } ;


 int XCHAL_NUM_DBREAK ;
 int XCHAL_NUM_IBREAK ;
 int unregister_hw_breakpoint (int *) ;

void flush_ptrace_hw_breakpoint(struct task_struct *tsk)
{
 int i;
 struct thread_struct *t = &tsk->thread;

 for (i = 0; i < XCHAL_NUM_IBREAK; ++i) {
  if (t->ptrace_bp[i]) {
   unregister_hw_breakpoint(t->ptrace_bp[i]);
   t->ptrace_bp[i] = ((void*)0);
  }
 }
 for (i = 0; i < XCHAL_NUM_DBREAK; ++i) {
  if (t->ptrace_wp[i]) {
   unregister_hw_breakpoint(t->ptrace_wp[i]);
   t->ptrace_wp[i] = ((void*)0);
  }
 }
}
