
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int md_sync_timer; int flags; } ;


 int HZ ;
 int MD_DIRTY ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int test_and_set_bit (int ,int *) ;

void drbd_md_mark_dirty(struct drbd_device *device)
{
 if (!test_and_set_bit(MD_DIRTY, &device->flags))
  mod_timer(&device->md_sync_timer, jiffies + 5*HZ);
}
