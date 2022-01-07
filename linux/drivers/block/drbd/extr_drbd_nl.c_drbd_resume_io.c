
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int misc_wait; int suspend_cnt; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

void drbd_resume_io(struct drbd_device *device)
{
 if (atomic_dec_and_test(&device->suspend_cnt))
  wake_up(&device->misc_wait);
}
