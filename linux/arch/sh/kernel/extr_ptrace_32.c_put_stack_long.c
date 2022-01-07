
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 scalar_t__ task_pt_regs (struct task_struct*) ;

__attribute__((used)) static inline int put_stack_long(struct task_struct *task, int offset,
     unsigned long data)
{
 unsigned char *stack;

 stack = (unsigned char *)task_pt_regs(task);
 stack += offset;
 *(unsigned long *) stack = data;
 return 0;
}
