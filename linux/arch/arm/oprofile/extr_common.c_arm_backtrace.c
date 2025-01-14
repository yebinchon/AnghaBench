
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stackframe {int dummy; } ;
struct pt_regs {scalar_t__ ARM_fp; } ;
struct frame_tail {int dummy; } ;


 int arm_get_current_stackframe (struct pt_regs* const,struct stackframe*) ;
 int report_trace ;
 struct frame_tail* user_backtrace (struct frame_tail*) ;
 int user_mode (struct pt_regs* const) ;
 int walk_stackframe (struct stackframe*,int ,unsigned int*) ;

__attribute__((used)) static void arm_backtrace(struct pt_regs * const regs, unsigned int depth)
{
 struct frame_tail *tail = ((struct frame_tail *) regs->ARM_fp) - 1;

 if (!user_mode(regs)) {
  struct stackframe frame;
  arm_get_current_stackframe(regs, &frame);
  walk_stackframe(&frame, report_trace, &depth);
  return;
 }

 while (depth-- && tail && !((unsigned long) tail & 3))
  tail = user_backtrace(tail);
}
