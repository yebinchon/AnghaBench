
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int single_step_exception (struct pt_regs*) ;
 scalar_t__ single_stepping (struct pt_regs*) ;

__attribute__((used)) static void emulate_single_step(struct pt_regs *regs)
{
 if (single_stepping(regs))
  single_step_exception(regs);
}
