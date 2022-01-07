
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum stack_type { ____Placeholder_stack_type } stack_type ;







const char *stack_type_name(enum stack_type type)
{
 switch (type) {
 case 128:
  return "task";
 case 131:
  return "irq";
 case 130:
  return "nodat";
 case 129:
  return "restart";
 default:
  return "unknown";
 }
}
