
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SCU_DOWN ;
 int intel_scu_notifier_post (int ,int *) ;
 int * ipc_devs ;
 int ipc_next_dev ;
 int platform_device_del (int ) ;

void intel_scu_devices_destroy(void)
{
 int i;

 intel_scu_notifier_post(SCU_DOWN, ((void*)0));

 for (i = 0; i < ipc_next_dev; i++)
  platform_device_del(ipc_devs[i]);
}
