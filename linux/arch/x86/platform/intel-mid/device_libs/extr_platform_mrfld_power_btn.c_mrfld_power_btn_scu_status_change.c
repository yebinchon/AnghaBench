
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long SCU_DOWN ;
 int mrfld_power_btn_dev ;
 int platform_device_register (int *) ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static int mrfld_power_btn_scu_status_change(struct notifier_block *nb,
          unsigned long code, void *data)
{
 if (code == SCU_DOWN) {
  platform_device_unregister(&mrfld_power_btn_dev);
  return 0;
 }

 return platform_device_register(&mrfld_power_btn_dev);
}
