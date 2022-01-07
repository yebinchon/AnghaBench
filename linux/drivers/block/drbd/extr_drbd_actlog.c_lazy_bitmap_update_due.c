
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {scalar_t__ rs_last_bcast; } ;


 int HZ ;
 int jiffies ;
 int time_after (int ,scalar_t__) ;

__attribute__((used)) static bool lazy_bitmap_update_due(struct drbd_device *device)
{
 return time_after(jiffies, device->rs_last_bcast + 2*HZ);
}
