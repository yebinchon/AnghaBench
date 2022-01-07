
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int show_stacktrace (struct task_struct*,int *) ;

void show_stack(struct task_struct *tsk, unsigned long *sp)
{
 show_stacktrace(tsk, ((void*)0));
}
