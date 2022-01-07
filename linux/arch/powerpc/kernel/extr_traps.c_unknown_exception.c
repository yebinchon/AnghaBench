
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int trap; int msr; int nip; } ;
typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;


 int SIGTRAP ;
 int TRAP_UNK ;
 int _exception (int ,struct pt_regs*,int ,int ) ;
 int exception_enter () ;
 int exception_exit (int) ;
 int printk (char*,int ,int ,int ) ;

void unknown_exception(struct pt_regs *regs)
{
 enum ctx_state prev_state = exception_enter();

 printk("Bad trap at PC: %lx, SR: %lx, vector=%lx\n",
        regs->nip, regs->msr, regs->trap);

 _exception(SIGTRAP, regs, TRAP_UNK, 0);

 exception_exit(prev_state);
}
