
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
 int pr_info_ratelimited (char*,int ,int ,int ,unsigned long) ;
 int task_pid_nr (TYPE_1__*) ;

void do_unhandled(struct pt_regs *regs, unsigned long exccause)
{
 __die_if_kernel("Caught unhandled exception - should not happen",
   regs, SIGKILL);


 pr_info_ratelimited("Caught unhandled exception in '%s' "
       "(pid = %d, pc = %#010lx) - should not happen\n"
       "\tEXCCAUSE is %ld\n",
       current->comm, task_pid_nr(current), regs->pc,
       exccause);
 force_sig(SIGILL);
}
