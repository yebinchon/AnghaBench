
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long SCU_DOWN ;
 int platform_device_register (int *) ;
 int platform_device_unregister (int *) ;
 int wdt_dev ;

__attribute__((used)) static int wdt_scu_status_change(struct notifier_block *nb,
     unsigned long code, void *data)
{
 if (code == SCU_DOWN) {
  platform_device_unregister(&wdt_dev);
  return 0;
 }

 return platform_device_register(&wdt_dev);
}
