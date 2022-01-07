
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disk; } ;
struct drbd_device {TYPE_1__ state; int local_cnt; } ;
typedef enum drbd_disk_state { ____Placeholder_drbd_disk_state } drbd_disk_state ;


 scalar_t__ D_DISKLESS ;
 int atomic_inc (int *) ;
 int put_ldev (struct drbd_device*) ;

__attribute__((used)) static inline int _get_ldev_if_state(struct drbd_device *device, enum drbd_disk_state mins)
{
 int io_allowed;


 if (device->state.disk == D_DISKLESS)
  return 0;

 atomic_inc(&device->local_cnt);
 io_allowed = (device->state.disk >= mins);
 if (!io_allowed)
  put_ldev(device);
 return io_allowed;
}
