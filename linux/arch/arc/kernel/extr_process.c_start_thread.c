
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long sp; unsigned long ret; int status32; int lp_start; int lp_end; scalar_t__ eflags; } ;


 int ISA_INIT_STATUS_BITS ;
 int STATUS_L_MASK ;
 int STATUS_U_MASK ;

void start_thread(struct pt_regs * regs, unsigned long pc, unsigned long usp)
{
 regs->sp = usp;
 regs->ret = pc;






 regs->status32 = STATUS_U_MASK | STATUS_L_MASK | ISA_INIT_STATUS_BITS;






 regs->lp_start = 0x10;
 regs->lp_end = 0x80;
}
