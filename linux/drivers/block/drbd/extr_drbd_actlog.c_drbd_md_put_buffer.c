
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int in_use; } ;
struct drbd_device {int misc_wait; TYPE_1__ md_io; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

void drbd_md_put_buffer(struct drbd_device *device)
{
 if (atomic_dec_and_test(&device->md_io.in_use))
  wake_up(&device->misc_wait);
}
