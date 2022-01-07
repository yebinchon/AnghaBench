
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long instruction_pointer (struct pt_regs*) ;

unsigned long kgdb_arch_pc(int exception, struct pt_regs *regs)
{
 if (exception == 60)
  return instruction_pointer(regs) - 2;
 return instruction_pointer(regs);
}
