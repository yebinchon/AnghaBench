
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_connection {int list; } ;


 int devcon_list ;
 int devcon_lock ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void device_connection_add(struct device_connection *con)
{
 mutex_lock(&devcon_lock);
 list_add_tail(&con->list, &devcon_list);
 mutex_unlock(&devcon_lock);
}
