
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int DBG_HOOK_ERROR ;
 int DBG_HOOK_HANDLED ;
 scalar_t__ uprobe_pre_sstep_notifier (struct pt_regs*) ;

__attribute__((used)) static int uprobe_breakpoint_handler(struct pt_regs *regs,
  unsigned int esr)
{
 if (uprobe_pre_sstep_notifier(regs))
  return DBG_HOOK_HANDLED;

 return DBG_HOOK_ERROR;
}
