
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {unsigned long* gr; unsigned long* iaoq; unsigned long ksp; unsigned long kpc; } ;


 int pt_regs_to_gdb_regs (unsigned long*,struct pt_regs*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

void sleeping_thread_to_gdb_regs(unsigned long *gdb_regs,
    struct task_struct *task)
{
 struct pt_regs *regs = task_pt_regs(task);
 unsigned long gr30, iaoq;

 gr30 = regs->gr[30];
 iaoq = regs->iaoq[0];

 regs->gr[30] = regs->ksp;
 regs->iaoq[0] = regs->kpc;
 pt_regs_to_gdb_regs(gdb_regs, regs);

 regs->gr[30] = gr30;
 regs->iaoq[0] = iaoq;

}
