
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int show_stack (struct task_struct*,int *) ;

__attribute__((used)) static void stack_proc(void *arg)
{
 struct task_struct *task = arg;

 show_stack(task, ((void*)0));
}
