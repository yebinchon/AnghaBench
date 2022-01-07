
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_OK ;
 int coherency_setup () ;

__attribute__((used)) static int r4k_cache_pm_notifier(struct notifier_block *self, unsigned long cmd,
          void *v)
{
 switch (cmd) {
 case 129:
 case 128:
  coherency_setup();
  break;
 }

 return NOTIFY_OK;
}
