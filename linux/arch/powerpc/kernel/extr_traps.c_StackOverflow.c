
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int * gpr; } ;
struct TYPE_3__ {int comm; } ;


 TYPE_1__* current ;
 int debugger (struct pt_regs*) ;
 int panic (char*) ;
 int pr_crit (char*,int ,int ,int ) ;
 int show_regs (struct pt_regs*) ;
 int task_pid_nr (TYPE_1__*) ;

void StackOverflow(struct pt_regs *regs)
{
 pr_crit("Kernel stack overflow in process %s[%d], r1=%lx\n",
  current->comm, task_pid_nr(current), regs->gpr[1]);
 debugger(regs);
 show_regs(regs);
 panic("kernel stack overflow");
}
