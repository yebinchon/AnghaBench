
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int saved_trap_no; } ;
struct uprobe_task {int xol_vaddr; TYPE_2__ autask; } ;
struct pt_regs {int ARM_pc; } ;
struct arch_uprobe {int (* prehandler ) (struct arch_uprobe*,TYPE_2__*,struct pt_regs*) ;} ;
struct TYPE_4__ {int trap_no; } ;
struct TYPE_6__ {TYPE_1__ thread; struct uprobe_task* utask; } ;


 int UPROBE_TRAP_NR ;
 TYPE_3__* current ;
 int stub1 (struct arch_uprobe*,TYPE_2__*,struct pt_regs*) ;

int arch_uprobe_pre_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 if (auprobe->prehandler)
  auprobe->prehandler(auprobe, &utask->autask, regs);

 utask->autask.saved_trap_no = current->thread.trap_no;
 current->thread.trap_no = UPROBE_TRAP_NR;
 regs->ARM_pc = utask->xol_vaddr;

 return 0;
}
