
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {unsigned long pc; } ;
struct pt_regs {unsigned long pc; int * regs; } ;


 scalar_t__ in_lock_functions (unsigned long) ;
 int start_backtrace (struct stackframe*,int ,unsigned long) ;
 int unwind_frame (int *,struct stackframe*) ;

unsigned long profile_pc(struct pt_regs *regs)
{
 struct stackframe frame;

 if (!in_lock_functions(regs->pc))
  return regs->pc;

 start_backtrace(&frame, regs->regs[29], regs->pc);

 do {
  int ret = unwind_frame(((void*)0), &frame);
  if (ret < 0)
   return 0;
 } while (in_lock_functions(frame.pc));

 return frame.pc;
}
