
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disk; } ;
struct drbd_device {int misc_wait; int flags; int local_cnt; TYPE_1__ state; } ;
typedef enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;


 int DESTROY_DISK ;
 int D_ASSERT (struct drbd_device*,int) ;
 int D_DISKLESS ;
 int D_FAILED ;
 int GOING_DISKLESS ;
 int GO_DISKLESS ;
 int __release (int ) ;
 int atomic_dec_return (int *) ;
 int drbd_device_post_work (struct drbd_device*,int ) ;
 int local ;
 int test_and_set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void put_ldev(struct drbd_device *device)
{
 enum drbd_disk_state disk_state = device->state.disk;




 int i = atomic_dec_return(&device->local_cnt);




 __release(local);
 D_ASSERT(device, i >= 0);
 if (i == 0) {
  if (disk_state == D_DISKLESS)

   drbd_device_post_work(device, DESTROY_DISK);
  if (disk_state == D_FAILED)

   if (!test_and_set_bit(GOING_DISKLESS, &device->flags))
    drbd_device_post_work(device, GO_DISKLESS);
  wake_up(&device->misc_wait);
 }
}
