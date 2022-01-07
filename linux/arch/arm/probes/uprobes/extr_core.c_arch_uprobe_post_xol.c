
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ saved_trap_no; } ;
struct uprobe_task {TYPE_2__ autask; scalar_t__ vaddr; } ;
struct pt_regs {scalar_t__ ARM_pc; } ;
struct arch_uprobe {int (* posthandler ) (struct arch_uprobe*,TYPE_2__*,struct pt_regs*) ;} ;
struct TYPE_4__ {scalar_t__ trap_no; } ;
struct TYPE_6__ {TYPE_1__ thread; struct uprobe_task* utask; } ;


 scalar_t__ UPROBE_TRAP_NR ;
 int WARN_ON_ONCE (int) ;
 TYPE_3__* current ;
 int stub1 (struct arch_uprobe*,TYPE_2__*,struct pt_regs*) ;

int arch_uprobe_post_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 WARN_ON_ONCE(current->thread.trap_no != UPROBE_TRAP_NR);

 current->thread.trap_no = utask->autask.saved_trap_no;
 regs->ARM_pc = utask->vaddr + 4;

 if (auprobe->posthandler)
  auprobe->posthandler(auprobe, &utask->autask, regs);

 return 0;
}
