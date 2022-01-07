
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int flags; } ;


 int AL_SUSPENDED ;
 int drbd_info (struct drbd_device*,char*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void drbd_resume_al(struct drbd_device *device)
{
 if (test_and_clear_bit(AL_SUSPENDED, &device->flags))
  drbd_info(device, "Resumed AL updates\n");
}
