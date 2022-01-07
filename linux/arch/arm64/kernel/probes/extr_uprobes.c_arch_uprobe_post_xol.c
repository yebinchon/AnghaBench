
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uprobe_task {scalar_t__ vaddr; } ;
struct pt_regs {int dummy; } ;
struct arch_uprobe {int dummy; } ;
struct TYPE_4__ {scalar_t__ fault_code; } ;
struct TYPE_5__ {TYPE_1__ thread; struct uprobe_task* utask; } ;


 scalar_t__ UPROBE_INV_FAULT_CODE ;
 int WARN_ON_ONCE (int) ;
 TYPE_2__* current ;
 int instruction_pointer_set (struct pt_regs*,scalar_t__) ;
 int user_disable_single_step (TYPE_2__*) ;

int arch_uprobe_post_xol(struct arch_uprobe *auprobe, struct pt_regs *regs)
{
 struct uprobe_task *utask = current->utask;

 WARN_ON_ONCE(current->thread.fault_code != UPROBE_INV_FAULT_CODE);


 instruction_pointer_set(regs, utask->vaddr + 4);

 user_disable_single_step(current);

 return 0;
}
