
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int KERN_DEFAULT ;
 struct task_struct* current ;
 unsigned long* get_stack_pointer (struct task_struct*,int *) ;
 int show_trace_log_lvl (struct task_struct*,int *,unsigned long*,int ) ;

void show_stack(struct task_struct *task, unsigned long *sp)
{
 task = task ? : current;





 if (!sp && task == current)
  sp = get_stack_pointer(current, ((void*)0));

 show_trace_log_lvl(task, ((void*)0), sp, KERN_DEFAULT);
}
