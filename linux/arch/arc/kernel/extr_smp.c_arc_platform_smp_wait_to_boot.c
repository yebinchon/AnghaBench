
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_ARC_SMP_HALT_ON_RESET ;
 scalar_t__ IS_ENABLED (int ) ;
 int __boot_read (int ) ;
 int __boot_write (int ,int ) ;
 int wake_flag ;

void arc_platform_smp_wait_to_boot(int cpu)
{

 if (IS_ENABLED(CONFIG_ARC_SMP_HALT_ON_RESET))
  return;

 while (__boot_read(wake_flag) != cpu)
  ;

 __boot_write(wake_flag, 0);
}
