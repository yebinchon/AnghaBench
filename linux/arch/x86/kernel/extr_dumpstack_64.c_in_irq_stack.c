
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {unsigned long* begin; unsigned long* end; unsigned long* next_sp; int type; } ;


 int IRQ_STACK_SIZE ;
 int STACK_TYPE_IRQ ;
 int hardirq_stack_ptr ;
 scalar_t__ this_cpu_read (int ) ;

__attribute__((used)) static bool in_irq_stack(unsigned long *stack, struct stack_info *info)
{
 unsigned long *end = (unsigned long *)this_cpu_read(hardirq_stack_ptr);
 unsigned long *begin = end - (IRQ_STACK_SIZE / sizeof(long));





 if (stack < begin || stack >= end)
  return 0;

 info->type = STACK_TYPE_IRQ;
 info->begin = begin;
 info->end = end;





 info->next_sp = (unsigned long *)*(end - 1);

 return 1;
}
