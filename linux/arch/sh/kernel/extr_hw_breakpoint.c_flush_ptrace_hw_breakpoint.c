
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_struct {int ** ptrace_bps; } ;
struct task_struct {struct thread_struct thread; } ;
struct TYPE_2__ {int num_events; } ;


 TYPE_1__* sh_ubc ;
 int unregister_hw_breakpoint (int *) ;

void flush_ptrace_hw_breakpoint(struct task_struct *tsk)
{
 int i;
 struct thread_struct *t = &tsk->thread;

 for (i = 0; i < sh_ubc->num_events; i++) {
  unregister_hw_breakpoint(t->ptrace_bps[i]);
  t->ptrace_bps[i] = ((void*)0);
 }
}
