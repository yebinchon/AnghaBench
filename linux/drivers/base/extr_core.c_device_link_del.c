
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_link {int dummy; } ;


 int device_link_put_kref (struct device_link*) ;
 int device_links_write_lock () ;
 int device_links_write_unlock () ;
 int device_pm_lock () ;
 int device_pm_unlock () ;

void device_link_del(struct device_link *link)
{
 device_links_write_lock();
 device_pm_lock();
 device_link_put_kref(link);
 device_pm_unlock();
 device_links_write_unlock();
}
