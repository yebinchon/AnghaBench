
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_OK ;
 int am43xx_control_restore_context () ;
 int am43xx_control_save_context () ;
 int enable_off_mode ;

__attribute__((used)) static int cpu_notifier(struct notifier_block *nb, unsigned long cmd, void *v)
{
 switch (cmd) {
 case 129:
  if (enable_off_mode)
   am43xx_control_save_context();
  break;
 case 128:
  if (enable_off_mode)
   am43xx_control_restore_context();
  break;
 }

 return NOTIFY_OK;
}
