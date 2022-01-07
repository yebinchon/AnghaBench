
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;





 int NOTIFY_OK ;
 int NOTIFY_STOP ;
 int mips_cpu_restore () ;
 int mips_cpu_save () ;

__attribute__((used)) static int mips_pm_notifier(struct notifier_block *self, unsigned long cmd,
       void *v)
{
 int ret;

 switch (cmd) {
 case 130:
  ret = mips_cpu_save();
  if (ret)
   return NOTIFY_STOP;
  break;
 case 129:
 case 128:
  mips_cpu_restore();
  break;
 }

 return NOTIFY_OK;
}
