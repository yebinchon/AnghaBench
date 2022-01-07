
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int flags; int ap_bio_cnt; int suspend_cnt; } ;


 int BITMAP_IO ;
 int atomic_read (int *) ;
 int drbd_get_max_buffers (struct drbd_device*) ;
 int drbd_state_is_stable (struct drbd_device*) ;
 scalar_t__ drbd_suspended (struct drbd_device*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline bool may_inc_ap_bio(struct drbd_device *device)
{
 int mxb = drbd_get_max_buffers(device);

 if (drbd_suspended(device))
  return 0;
 if (atomic_read(&device->suspend_cnt))
  return 0;






 if (!drbd_state_is_stable(device))
  return 0;



 if (atomic_read(&device->ap_bio_cnt) > mxb)
  return 0;
 if (test_bit(BITMAP_IO, &device->flags))
  return 0;
 return 1;
}
