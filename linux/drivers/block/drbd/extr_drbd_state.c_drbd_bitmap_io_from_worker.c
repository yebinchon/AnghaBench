
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drbd_device {int suspend_cnt; } ;
typedef enum bm_flag { ____Placeholder_bm_flag } bm_flag ;
struct TYPE_6__ {TYPE_2__* connection; } ;
struct TYPE_4__ {scalar_t__ task; } ;
struct TYPE_5__ {TYPE_1__ worker; } ;


 int D_ASSERT (struct drbd_device*,int) ;
 int atomic_inc (int *) ;
 scalar_t__ current ;
 int drbd_bm_lock (struct drbd_device*,char*,int) ;
 int drbd_bm_unlock (struct drbd_device*) ;
 int drbd_resume_io (struct drbd_device*) ;
 TYPE_3__* first_peer_device (struct drbd_device*) ;

int drbd_bitmap_io_from_worker(struct drbd_device *device,
  int (*io_fn)(struct drbd_device *),
  char *why, enum bm_flag flags)
{
 int rv;

 D_ASSERT(device, current == first_peer_device(device)->connection->worker.task);


 atomic_inc(&device->suspend_cnt);

 drbd_bm_lock(device, why, flags);
 rv = io_fn(device);
 drbd_bm_unlock(device);

 drbd_resume_io(device);

 return rv;
}
