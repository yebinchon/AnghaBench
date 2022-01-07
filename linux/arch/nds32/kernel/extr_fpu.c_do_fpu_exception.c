
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int FPU_DISABLE_EXCEPTION ;
 unsigned int FPU_EXCEPTION ;
 int do_fpu_context_switch (struct pt_regs*) ;
 int handle_fpu_exception (struct pt_regs*) ;
 int preempt_disable () ;
 int preempt_enable () ;

bool do_fpu_exception(unsigned int subtype, struct pt_regs *regs)
{
 int done = 1;

 if (subtype == FPU_DISABLE_EXCEPTION) {
  preempt_disable();
  do_fpu_context_switch(regs);
  preempt_enable();
 }

 else if (subtype == FPU_EXCEPTION)
  handle_fpu_exception(regs);
 else
  done = 0;
 return done;
}
