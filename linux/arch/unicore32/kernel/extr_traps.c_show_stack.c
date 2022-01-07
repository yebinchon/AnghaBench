
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int barrier () ;
 int dump_backtrace (int *,struct task_struct*) ;

void show_stack(struct task_struct *tsk, unsigned long *sp)
{
 dump_backtrace(((void*)0), tsk);
 barrier();
}
