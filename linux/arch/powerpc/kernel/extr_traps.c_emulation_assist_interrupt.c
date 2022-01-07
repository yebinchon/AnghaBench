
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; } ;


 int REASON_ILLEGAL ;
 int program_check_exception (struct pt_regs*) ;

void emulation_assist_interrupt(struct pt_regs *regs)
{
 regs->msr |= REASON_ILLEGAL;
 program_check_exception(regs);
}
