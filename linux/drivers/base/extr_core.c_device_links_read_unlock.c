
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_links_lock ;
 int up_read (int *) ;

void device_links_read_unlock(int not_used)
{
 up_read(&device_links_lock);
}
