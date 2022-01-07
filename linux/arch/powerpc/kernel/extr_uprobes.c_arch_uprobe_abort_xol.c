
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int saved_trap_nr; } ;
struct uprobe_task {int vaddr; TYPE_2__ autask; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_5__ {int trap_nr; } ;
struct TYPE_7__ {TYPE_1__ thread; struct uprobe_task* utask; } ;


 TYPE_3__* current ;
 int instruction_pointer_set (struct pt_regs*,int ) ;
 int user_disable_single_step (TYPE_3__*) ;

void arch_uprobe_abort_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 current->thread.trap_nr = utask->autask.saved_trap_nr;
 instruction_pointer_set(regs, utask->vaddr);

 user_disable_single_step(current);
}
