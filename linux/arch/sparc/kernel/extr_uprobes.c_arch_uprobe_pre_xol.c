
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arch_uprobe_task {int saved_tnpc; int saved_tpc; } ;
struct uprobe_task {int xol_vaddr; struct arch_uprobe_task autask; } ;
struct pt_regs {int tnpc; int tpc; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_2__ {struct uprobe_task* utask; } ;


 TYPE_1__* current ;
 int instruction_pointer_set (struct pt_regs*,int ) ;

int arch_uprobe_pre_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;
 struct arch_uprobe_task *autask = &current->utask->autask;




 autask->saved_tpc = regs->tpc;
 autask->saved_tnpc = regs->tnpc;




 instruction_pointer_set(regs, utask->xol_vaddr);

 return 0;
}
