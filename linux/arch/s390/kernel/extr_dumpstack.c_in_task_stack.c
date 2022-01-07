
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_info {int dummy; } ;


 int STACK_TYPE_TASK ;
 scalar_t__ THREAD_SIZE ;
 int in_stack (unsigned long,struct stack_info*,int ,unsigned long,scalar_t__) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

__attribute__((used)) static bool in_task_stack(unsigned long sp, struct task_struct *task,
     struct stack_info *info)
{
 unsigned long stack;

 stack = (unsigned long) task_stack_page(task);
 return in_stack(sp, info, STACK_TYPE_TASK, stack, stack + THREAD_SIZE);
}
