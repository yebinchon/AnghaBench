
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enabled_devices ;
 int initialized ;
 int smp_wmb () ;

void cpuidle_install_idle_handler(void)
{
 if (enabled_devices) {

  smp_wmb();
  initialized = 1;
 }
}
