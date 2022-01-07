
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;


 scalar_t__ THREAD_SIZE ;
 struct task_struct* current ;
 scalar_t__ current_stack_pointer ;
 int dump_mem (char*,unsigned long,scalar_t__) ;
 int show_trace (struct task_struct*,unsigned long*,int *) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

void show_stack(struct task_struct *tsk, unsigned long *sp)
{
 unsigned long stack;

 if (!tsk)
  tsk = current;
 if (tsk == current)
  sp = (unsigned long *)current_stack_pointer;
 else
  sp = (unsigned long *)tsk->thread.sp;

 stack = (unsigned long)sp;
 dump_mem("Stack: ", stack, THREAD_SIZE +
   (unsigned long)task_stack_page(tsk));
 show_trace(tsk, sp, ((void*)0));
}
