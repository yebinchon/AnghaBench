
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_links_read_lock () ;
 int device_links_read_unlock (int) ;
 int device_pm_lock () ;
 int device_pm_unlock () ;
 int device_reorder_to_tail (struct device*,int *) ;

void device_pm_move_to_tail(struct device *dev)
{
 int idx;

 idx = device_links_read_lock();
 device_pm_lock();
 device_reorder_to_tail(dev, ((void*)0));
 device_pm_unlock();
 device_links_read_unlock(idx);
}
