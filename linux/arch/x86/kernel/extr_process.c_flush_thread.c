
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fpu; int tls_array; } ;
struct task_struct {TYPE_1__ thread; } ;


 struct task_struct* current ;
 int flush_ptrace_hw_breakpoint (struct task_struct*) ;
 int fpu__clear (int *) ;
 int memset (int ,int ,int) ;

void flush_thread(void)
{
 struct task_struct *tsk = current;

 flush_ptrace_hw_breakpoint(tsk);
 memset(tsk->thread.tls_array, 0, sizeof(tsk->thread.tls_array));

 fpu__clear(&tsk->thread.fpu);
}
