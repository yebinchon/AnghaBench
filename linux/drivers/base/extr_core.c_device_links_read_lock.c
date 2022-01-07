
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_links_lock ;
 int down_read (int *) ;

int device_links_read_lock(void)
{
 down_read(&device_links_lock);
 return 0;
}
