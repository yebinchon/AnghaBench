
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;
struct stack_frame {int dummy; } ;
struct pt_regs {unsigned long ip; } ;


 int current ;
 struct stack_frame* dump_user_backtrace (struct stack_frame*) ;
 scalar_t__ frame_pointer (struct pt_regs* const) ;
 int oprofile_add_trace (unsigned long) ;
 int unwind_done (struct unwind_state*) ;
 unsigned long unwind_get_return_address (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 int unwind_start (struct unwind_state*,int ,struct pt_regs* const,int *) ;
 int user_mode (struct pt_regs* const) ;
 scalar_t__ x86_backtrace_32 (struct pt_regs* const,unsigned int) ;

void
x86_backtrace(struct pt_regs * const regs, unsigned int depth)
{
 struct stack_frame *head = (struct stack_frame *)frame_pointer(regs);

 if (!user_mode(regs)) {
  struct unwind_state state;
  unsigned long addr;

  if (!depth)
   return;

  oprofile_add_trace(regs->ip);

  if (!--depth)
   return;

  for (unwind_start(&state, current, regs, ((void*)0));
       !unwind_done(&state); unwind_next_frame(&state)) {
   addr = unwind_get_return_address(&state);
   if (!addr)
    break;

   oprofile_add_trace(addr);

   if (!--depth)
    break;
  }

  return;
 }

 if (x86_backtrace_32(regs, depth))
  return;

 while (depth-- && head)
  head = dump_user_backtrace(head);
}
