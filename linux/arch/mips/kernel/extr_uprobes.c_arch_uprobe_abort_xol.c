
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uprobe_task {int vaddr; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_2__ {struct uprobe_task* utask; } ;


 TYPE_1__* current ;
 int instruction_pointer_set (struct pt_regs*,int ) ;

void arch_uprobe_abort_xol(struct arch_uprobe *aup,
 struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 instruction_pointer_set(regs, utask->vaddr);
}
