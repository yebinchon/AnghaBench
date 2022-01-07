
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_info {unsigned long* begin; unsigned long* end; int * next_sp; int type; } ;


 int STACK_TYPE_TASK ;
 int THREAD_SIZE ;
 unsigned long* task_stack_page (struct task_struct*) ;

bool in_task_stack(unsigned long *stack, struct task_struct *task,
     struct stack_info *info)
{
 unsigned long *begin = task_stack_page(task);
 unsigned long *end = task_stack_page(task) + THREAD_SIZE;

 if (stack < begin || stack >= end)
  return 0;

 info->type = STACK_TYPE_TASK;
 info->begin = begin;
 info->end = end;
 info->next_sp = ((void*)0);

 return 1;
}
