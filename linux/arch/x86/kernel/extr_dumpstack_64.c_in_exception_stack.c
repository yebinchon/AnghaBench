
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_info {unsigned long* begin; unsigned long* end; unsigned long* next_sp; int type; } ;
struct pt_regs {scalar_t__ sp; } ;
struct estack_pages {int type; scalar_t__ size; scalar_t__ offs; } ;
struct cea_exception_stacks {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int N_EXCEPTION_STACKS ;
 unsigned long PAGE_SHIFT ;
 scalar_t__ __this_cpu_read (int ) ;
 int cea_exception_stacks ;
 struct estack_pages* estack_pages ;

__attribute__((used)) static bool in_exception_stack(unsigned long *stack, struct stack_info *info)
{
 unsigned long begin, end, stk = (unsigned long)stack;
 const struct estack_pages *ep;
 struct pt_regs *regs;
 unsigned int k;

 BUILD_BUG_ON(N_EXCEPTION_STACKS != 6);

 begin = (unsigned long)__this_cpu_read(cea_exception_stacks);




 if (!begin)
  return 0;

 end = begin + sizeof(struct cea_exception_stacks);

 if (stk < begin || stk >= end)
  return 0;


 k = (stk - begin) >> PAGE_SHIFT;

 ep = &estack_pages[k];

 if (!ep->size)
  return 0;

 begin += (unsigned long)ep->offs;
 end = begin + (unsigned long)ep->size;
 regs = (struct pt_regs *)end - 1;

 info->type = ep->type;
 info->begin = (unsigned long *)begin;
 info->end = (unsigned long *)end;
 info->next_sp = (unsigned long *)regs->sp;
 return 1;
}
