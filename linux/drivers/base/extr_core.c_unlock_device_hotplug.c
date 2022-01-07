
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_hotplug_lock ;
 int mutex_unlock (int *) ;

void unlock_device_hotplug(void)
{
 mutex_unlock(&device_hotplug_lock);
}
