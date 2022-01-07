
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_hotplug_lock ;
 int mutex_lock (int *) ;

void lock_device_hotplug(void)
{
 mutex_lock(&device_hotplug_lock);
}
