
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uprobe_task {scalar_t__ xol_vaddr; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {struct uprobe_task* utask; } ;


 int DBG_HOOK_ERROR ;
 int DBG_HOOK_HANDLED ;
 int WARN_ON (int ) ;
 TYPE_1__* current ;
 scalar_t__ instruction_pointer (struct pt_regs*) ;
 scalar_t__ uprobe_post_sstep_notifier (struct pt_regs*) ;

__attribute__((used)) static int uprobe_single_step_handler(struct pt_regs *regs,
  unsigned int esr)
{
 struct uprobe_task *utask = current->utask;

 WARN_ON(utask && (instruction_pointer(regs) != utask->xol_vaddr + 4));
 if (uprobe_post_sstep_notifier(regs))
  return DBG_HOOK_HANDLED;

 return DBG_HOOK_ERROR;
}
