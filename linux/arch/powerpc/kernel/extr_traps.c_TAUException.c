
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int trap; int msr; int nip; } ;


 int print_tainted () ;
 int printk (char*,int ,int ,int ,int ) ;

void TAUException(struct pt_regs *regs)
{
 printk("TAU trap at PC: %lx, MSR: %lx, vector=%lx    %s\n",
        regs->nip, regs->msr, regs->trap, print_tainted());
}
