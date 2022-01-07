
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int pc; } ;
struct TYPE_3__ {int comm; } ;


 int SIGILL ;
 int SIGKILL ;
 int __die_if_kernel (char*,struct pt_regs*,int ) ;
 TYPE_1__* current ;
 int force_sig (int ) ;
 int pr_info_ratelimited (char*,int ,int ,int ) ;
 int task_pid_nr (TYPE_1__*) ;

void
do_illegal_instruction(struct pt_regs *regs)
{
 __die_if_kernel("Illegal instruction in kernel", regs, SIGKILL);



 pr_info_ratelimited("Illegal Instruction in '%s' (pid = %d, pc = %#010lx)\n",
       current->comm, task_pid_nr(current), regs->pc);
 force_sig(SIGILL);
}
