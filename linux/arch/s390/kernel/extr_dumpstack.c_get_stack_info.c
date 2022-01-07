
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_info {unsigned long type; } ;


 int EINVAL ;
 unsigned long STACK_TYPE_UNKNOWN ;
 struct task_struct* current ;
 int in_irq_stack (unsigned long,struct stack_info*) ;
 int in_nodat_stack (unsigned long,struct stack_info*) ;
 int in_restart_stack (unsigned long,struct stack_info*) ;
 scalar_t__ in_task_stack (unsigned long,struct task_struct*,struct stack_info*) ;

int get_stack_info(unsigned long sp, struct task_struct *task,
     struct stack_info *info, unsigned long *visit_mask)
{
 if (!sp)
  goto unknown;

 task = task ? : current;


 if (in_task_stack(sp, task, info))
  goto recursion_check;

 if (task != current)
  goto unknown;


 if (!in_irq_stack(sp, info) &&
     !in_nodat_stack(sp, info) &&
     !in_restart_stack(sp, info))
  goto unknown;

recursion_check:





 if (*visit_mask & (1UL << info->type))
  goto unknown;
 *visit_mask |= 1UL << info->type;
 return 0;
unknown:
 info->type = STACK_TYPE_UNKNOWN;
 return -EINVAL;
}
