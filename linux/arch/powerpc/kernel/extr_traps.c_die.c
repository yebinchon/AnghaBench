
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int TRAP (struct pt_regs*) ;
 scalar_t__ __die (char const*,struct pt_regs*,long) ;
 scalar_t__ debugger (struct pt_regs*) ;
 unsigned long oops_begin (struct pt_regs*) ;
 int oops_end (unsigned long,struct pt_regs*,long) ;

void die(const char *str, struct pt_regs *regs, long err)
{
 unsigned long flags;




 if (TRAP(regs) != 0x100) {
  if (debugger(regs))
   return;
 }

 flags = oops_begin(regs);
 if (__die(str, regs, err))
  err = 0;
 oops_end(flags, regs, err);
}
