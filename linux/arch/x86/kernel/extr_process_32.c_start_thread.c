
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ip; unsigned long sp; int flags; int cs; void* ss; void* es; void* ds; scalar_t__ fs; } ;


 int X86_EFLAGS_IF ;
 int __USER_CS ;
 void* __USER_DS ;
 int force_iret () ;
 int set_user_gs (struct pt_regs*,int ) ;

void
start_thread(struct pt_regs *regs, unsigned long new_ip, unsigned long new_sp)
{
 set_user_gs(regs, 0);
 regs->fs = 0;
 regs->ds = __USER_DS;
 regs->es = __USER_DS;
 regs->ss = __USER_DS;
 regs->cs = __USER_CS;
 regs->ip = new_ip;
 regs->sp = new_sp;
 regs->flags = X86_EFLAGS_IF;
 force_iret();
}
