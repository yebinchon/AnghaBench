
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; unsigned long r1; int msr; scalar_t__ pt_mode; } ;


 int MSR_UMS ;
 int MSR_VM ;

void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long usp)
{
 regs->pc = pc;
 regs->r1 = usp;
 regs->pt_mode = 0;




}
