
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; unsigned long sr; unsigned long sp; } ;


 int SPR_SR ;
 unsigned long SPR_SR_SM ;
 int memset (struct pt_regs*,int ,int) ;
 unsigned long mfspr (int ) ;

void start_thread(struct pt_regs *regs, unsigned long pc, unsigned long sp)
{
 unsigned long sr = mfspr(SPR_SR) & ~SPR_SR_SM;

 memset(regs, 0, sizeof(struct pt_regs));

 regs->pc = pc;
 regs->sr = sr;
 regs->sp = sp;
}
