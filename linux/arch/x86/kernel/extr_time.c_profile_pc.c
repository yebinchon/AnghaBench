
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {scalar_t__ sp; scalar_t__ bp; } ;


 scalar_t__ in_lock_functions (unsigned long) ;
 unsigned long instruction_pointer (struct pt_regs*) ;
 int user_mode (struct pt_regs*) ;

unsigned long profile_pc(struct pt_regs *regs)
{
 unsigned long pc = instruction_pointer(regs);

 if (!user_mode(regs) && in_lock_functions(pc)) {



  unsigned long *sp = (unsigned long *)regs->sp;





  if (sp[0] >> 22)
   return sp[0];
  if (sp[1] >> 22)
   return sp[1];

 }
 return pc;
}
