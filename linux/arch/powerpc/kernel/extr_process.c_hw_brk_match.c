
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arch_hw_breakpoint {scalar_t__ address; scalar_t__ type; scalar_t__ len; } ;



__attribute__((used)) static inline bool hw_brk_match(struct arch_hw_breakpoint *a,
         struct arch_hw_breakpoint *b)
{
 if (a->address != b->address)
  return 0;
 if (a->type != b->type)
  return 0;
 if (a->len != b->len)
  return 0;
 return 1;
}
