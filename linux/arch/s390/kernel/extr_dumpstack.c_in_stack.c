
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {int type; unsigned long begin; unsigned long end; } ;
typedef enum stack_type { ____Placeholder_stack_type } stack_type ;



__attribute__((used)) static inline bool in_stack(unsigned long sp, struct stack_info *info,
       enum stack_type type, unsigned long low,
       unsigned long high)
{
 if (sp < low || sp >= high)
  return 0;
 info->type = type;
 info->begin = low;
 info->end = high;
 return 1;
}
