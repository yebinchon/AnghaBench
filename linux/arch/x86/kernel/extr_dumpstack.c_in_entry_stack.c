
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {int * next_sp; void* end; void* begin; int type; } ;
struct entry_stack {int dummy; } ;


 int STACK_TYPE_ENTRY ;
 struct entry_stack* cpu_entry_stack (int ) ;
 int smp_processor_id () ;

bool in_entry_stack(unsigned long *stack, struct stack_info *info)
{
 struct entry_stack *ss = cpu_entry_stack(smp_processor_id());

 void *begin = ss;
 void *end = ss + 1;

 if ((void *)stack < begin || (void *)stack >= end)
  return 0;

 info->type = STACK_TYPE_ENTRY;
 info->begin = begin;
 info->end = end;
 info->next_sp = ((void*)0);

 return 1;
}
