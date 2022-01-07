
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_hotplug_lock ;
 int msleep (int) ;
 scalar_t__ mutex_trylock (int *) ;
 int restart_syscall () ;

int lock_device_hotplug_sysfs(void)
{
 if (mutex_trylock(&device_hotplug_lock))
  return 0;


 msleep(5);
 return restart_syscall();
}
