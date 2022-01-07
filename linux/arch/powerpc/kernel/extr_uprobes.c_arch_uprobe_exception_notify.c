
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct notifier_block {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;




 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 scalar_t__ WARN_ON (int) ;
 int uprobe_post_sstep_notifier (struct pt_regs*) ;
 int uprobe_pre_sstep_notifier (struct pt_regs*) ;
 int user_mode (struct pt_regs*) ;

int arch_uprobe_exception_notify(struct notifier_block *self,
    unsigned long val, void *data)
{
 struct die_args *args = data;
 struct pt_regs *regs = args->regs;


 if (WARN_ON(!regs))
  return NOTIFY_DONE;


 if (!user_mode(regs))
  return NOTIFY_DONE;

 switch (val) {
 case 129:
  if (uprobe_pre_sstep_notifier(regs))
   return NOTIFY_STOP;
  break;
 case 128:
  if (uprobe_post_sstep_notifier(regs))
   return NOTIFY_STOP;
 default:
  break;
 }
 return NOTIFY_DONE;
}
