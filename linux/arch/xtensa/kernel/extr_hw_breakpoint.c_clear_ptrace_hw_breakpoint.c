
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptrace_wp; int ptrace_bp; } ;
struct task_struct {TYPE_1__ thread; } ;


 int memset (int ,int ,int) ;

void clear_ptrace_hw_breakpoint(struct task_struct *tsk)
{
 memset(tsk->thread.ptrace_bp, 0, sizeof(tsk->thread.ptrace_bp));
 memset(tsk->thread.ptrace_wp, 0, sizeof(tsk->thread.ptrace_wp));
}
