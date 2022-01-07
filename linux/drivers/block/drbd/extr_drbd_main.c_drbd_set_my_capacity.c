
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int dummy; } ;
typedef int sector_t ;


 int _drbd_set_my_capacity (struct drbd_device*,int) ;
 int drbd_info (struct drbd_device*,char*,int ,unsigned long long) ;
 int ppsize (char*,int) ;

void drbd_set_my_capacity(struct drbd_device *device, sector_t size)
{
 char ppb[10];
 _drbd_set_my_capacity(device, size);
 drbd_info(device, "size = %s (%llu KB)\n",
  ppsize(ppb, size>>1), (unsigned long long)size>>1);
}
