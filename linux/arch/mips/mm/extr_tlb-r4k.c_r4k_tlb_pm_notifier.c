
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;




 int NOTIFY_OK ;
 int r4k_tlb_configure () ;

__attribute__((used)) static int r4k_tlb_pm_notifier(struct notifier_block *self, unsigned long cmd,
          void *v)
{
 switch (cmd) {
 case 129:
 case 128:
  r4k_tlb_configure();
  break;
 }

 return NOTIFY_OK;
}
