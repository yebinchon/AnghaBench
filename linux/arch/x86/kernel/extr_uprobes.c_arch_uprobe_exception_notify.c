
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct notifier_block {int dummy; } ;
struct die_args {struct pt_regs* regs; } ;




 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int uprobe_post_sstep_notifier (struct pt_regs*) ;
 int uprobe_pre_sstep_notifier (struct pt_regs*) ;
 int user_mode (struct pt_regs*) ;

int arch_uprobe_exception_notify(struct notifier_block *self, unsigned long val, void *data)
{
 struct die_args *args = data;
 struct pt_regs *regs = args->regs;
 int ret = NOTIFY_DONE;


 if (regs && !user_mode(regs))
  return NOTIFY_DONE;

 switch (val) {
 case 128:
  if (uprobe_pre_sstep_notifier(regs))
   ret = NOTIFY_STOP;

  break;

 case 129:
  if (uprobe_post_sstep_notifier(regs))
   ret = NOTIFY_STOP;

 default:
  break;
 }

 return ret;
}
