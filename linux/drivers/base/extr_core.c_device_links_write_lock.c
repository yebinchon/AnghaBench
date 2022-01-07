
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int device_links_lock ;
 int down_write (int *) ;

__attribute__((used)) static inline void device_links_write_lock(void)
{
 down_write(&device_links_lock);
}
