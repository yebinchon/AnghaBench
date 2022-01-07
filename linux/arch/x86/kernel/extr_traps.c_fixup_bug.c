
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ip; } ;





 int LEN_UD2 ;
 int X86_TRAP_UD ;
 int report_bug (int ,struct pt_regs*) ;

int fixup_bug(struct pt_regs *regs, int trapnr)
{
 if (trapnr != X86_TRAP_UD)
  return 0;

 switch (report_bug(regs->ip, regs)) {
 case 129:
 case 130:
  break;

 case 128:
  regs->ip += LEN_UD2;
  return 1;
 }

 return 0;
}
