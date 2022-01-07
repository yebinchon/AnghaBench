
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int saved_tf; int saved_trap_nr; } ;
struct uprobe_task {TYPE_3__ autask; int vaddr; } ;
struct pt_regs {int flags; int ip; } ;
struct arch_uprobe {TYPE_1__* ops; } ;
struct TYPE_6__ {int trap_nr; } ;
struct TYPE_8__ {TYPE_2__ thread; struct uprobe_task* utask; } ;
struct TYPE_5__ {int (* abort ) (struct arch_uprobe*,struct pt_regs*) ;} ;


 int X86_EFLAGS_TF ;
 TYPE_4__* current ;
 int stub1 (struct arch_uprobe*,struct pt_regs*) ;

void arch_uprobe_abort_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 if (auprobe->ops->abort)
  auprobe->ops->abort(auprobe, regs);

 current->thread.trap_nr = utask->autask.saved_trap_nr;
 regs->ip = utask->vaddr;

 if (!utask->autask.saved_tf)
  regs->flags &= ~X86_EFLAGS_TF;
}
