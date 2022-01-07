
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum stack_type { ____Placeholder_stack_type } stack_type ;


 int STACK_TYPE_ENTRY ;
 int STACK_TYPE_IRQ ;
 int STACK_TYPE_SOFTIRQ ;

const char *stack_type_name(enum stack_type type)
{
 if (type == STACK_TYPE_IRQ)
  return "IRQ";

 if (type == STACK_TYPE_SOFTIRQ)
  return "SOFTIRQ";

 if (type == STACK_TYPE_ENTRY)
  return "ENTRY_TRAMPOLINE";

 return ((void*)0);
}
