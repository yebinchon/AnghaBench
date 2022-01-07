
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct die_args {scalar_t__ regs; } ;




 int NOTIFY_DONE ;
 int NOTIFY_STOP ;
 int uprobe_post_sstep_notifier (scalar_t__) ;
 int uprobe_pre_sstep_notifier (scalar_t__) ;
 int user_mode (scalar_t__) ;

int arch_uprobe_exception_notify(struct notifier_block *self,
     unsigned long val, void *data)
{
 int ret = NOTIFY_DONE;
 struct die_args *args = (struct die_args *)data;


 if (args->regs && !user_mode(args->regs))
  return NOTIFY_DONE;

 switch (val) {
 case 129:
  if (uprobe_pre_sstep_notifier(args->regs))
   ret = NOTIFY_STOP;
  break;

 case 128:
  if (uprobe_post_sstep_notifier(args->regs))
   ret = NOTIFY_STOP;

 default:
  break;
 }

 return ret;
}
