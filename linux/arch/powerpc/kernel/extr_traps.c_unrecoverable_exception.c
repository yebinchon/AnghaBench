
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; int nip; int trap; } ;


 int SIGABRT ;
 int die (char*,struct pt_regs*,int ) ;
 int pr_emerg (char*,int ,int ,int ) ;

void unrecoverable_exception(struct pt_regs *regs)
{
 pr_emerg("Unrecoverable exception %lx at %lx (msr=%lx)\n",
   regs->trap, regs->nip, regs->msr);
 die("Unrecoverable exception", regs, SIGABRT);
}
