
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int ap_bio_cnt; int misc_wait; int suspend_cnt; } ;


 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 scalar_t__ drbd_suspended (struct drbd_device*) ;
 int wait_event (int ,int) ;

void drbd_suspend_io(struct drbd_device *device)
{
 atomic_inc(&device->suspend_cnt);
 if (drbd_suspended(device))
  return;
 wait_event(device->misc_wait, !atomic_read(&device->ap_bio_cnt));
}
