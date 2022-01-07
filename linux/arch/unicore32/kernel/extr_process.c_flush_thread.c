
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int fpstate; int * used_cp; } ;
struct TYPE_2__ {int debug; } ;
struct task_struct {TYPE_1__ thread; } ;
struct fp_state {int dummy; } ;
struct debug_info {int dummy; } ;


 struct task_struct* current ;
 struct thread_info* current_thread_info () ;
 int memset (int *,int ,int) ;

void flush_thread(void)
{
 struct thread_info *thread = current_thread_info();
 struct task_struct *tsk = current;

 memset(thread->used_cp, 0, sizeof(thread->used_cp));
 memset(&tsk->thread.debug, 0, sizeof(struct debug_info));



}
