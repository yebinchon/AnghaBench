
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long pc; unsigned long* regs; int sr; scalar_t__ pr; } ;


 int SR_FD ;
 int current ;
 int free_thread_xstate (int ) ;

void start_thread(struct pt_regs *regs, unsigned long new_pc,
    unsigned long new_sp)
{
 regs->pr = 0;
 regs->sr = SR_FD;
 regs->pc = new_pc;
 regs->regs[15] = new_sp;

 free_thread_xstate(current);
}
