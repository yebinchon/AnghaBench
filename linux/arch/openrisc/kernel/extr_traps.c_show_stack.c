
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int pr_emerg (char*) ;
 int print_trace ;
 int unwind_stack (int *,unsigned long*,int ) ;

void show_stack(struct task_struct *task, unsigned long *esp)
{
 if (esp == ((void*)0))
  esp = (unsigned long *)&esp;

 pr_emerg("Call trace:\n");
 unwind_stack(((void*)0), esp, print_trace);
}
