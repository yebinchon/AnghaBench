
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drbd_peer_device {TYPE_2__* connection; struct drbd_device* device; } ;
struct drbd_device {int done_ee; int sync_ee; int active_ee; int read_ee; int pp_in_use; int pp_in_use_by_net; int net_ee; int * p_uuid; int resync_timer; int misc_wait; int rs_pending_cnt; scalar_t__ rs_failed; scalar_t__ rs_total; TYPE_1__* resource; } ;
struct TYPE_4__ {int sender_work; } ;
struct TYPE_3__ {int req_lock; } ;


 int BM_LOCKED_CHANGE_ALLOWED ;
 int D_ASSERT (struct drbd_device*,int ) ;
 int _drbd_wait_ee_list_empty (struct drbd_device*,int *) ;
 unsigned int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 int drbd_bitmap_io (struct drbd_device*,int *,char*,int ) ;
 int drbd_bm_write_copy_pages ;
 int drbd_finish_peer_reqs (struct drbd_device*) ;
 int drbd_flush_workqueue (int *) ;
 unsigned int drbd_free_peer_reqs (struct drbd_device*,int *) ;
 int drbd_info (struct drbd_device*,char*,unsigned int) ;
 int drbd_md_sync (struct drbd_device*) ;
 int drbd_rs_cancel_all (struct drbd_device*) ;
 int drbd_suspended (struct drbd_device*) ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 int kfree (int *) ;
 int list_empty (int *) ;
 int put_ldev (struct drbd_device*) ;
 int resync_timer_fn (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tl_clear (TYPE_2__*) ;
 int wake_up (int *) ;

__attribute__((used)) static int drbd_disconnected(struct drbd_peer_device *peer_device)
{
 struct drbd_device *device = peer_device->device;
 unsigned int i;


 spin_lock_irq(&device->resource->req_lock);
 _drbd_wait_ee_list_empty(device, &device->active_ee);
 _drbd_wait_ee_list_empty(device, &device->sync_ee);
 _drbd_wait_ee_list_empty(device, &device->read_ee);
 spin_unlock_irq(&device->resource->req_lock);
 drbd_rs_cancel_all(device);
 device->rs_total = 0;
 device->rs_failed = 0;
 atomic_set(&device->rs_pending_cnt, 0);
 wake_up(&device->misc_wait);

 del_timer_sync(&device->resync_timer);
 resync_timer_fn(&device->resync_timer);




 drbd_flush_workqueue(&peer_device->connection->sender_work);

 drbd_finish_peer_reqs(device);




 drbd_flush_workqueue(&peer_device->connection->sender_work);



 drbd_rs_cancel_all(device);

 kfree(device->p_uuid);
 device->p_uuid = ((void*)0);

 if (!drbd_suspended(device))
  tl_clear(peer_device->connection);

 drbd_md_sync(device);

 if (get_ldev(device)) {
  drbd_bitmap_io(device, &drbd_bm_write_copy_pages,
    "write from disconnected", BM_LOCKED_CHANGE_ALLOWED);
  put_ldev(device);
 }
 i = drbd_free_peer_reqs(device, &device->net_ee);
 if (i)
  drbd_info(device, "net_ee not empty, killed %u entries\n", i);
 i = atomic_read(&device->pp_in_use_by_net);
 if (i)
  drbd_info(device, "pp_in_use_by_net = %d, expected 0\n", i);
 i = atomic_read(&device->pp_in_use);
 if (i)
  drbd_info(device, "pp_in_use = %d, expected 0\n", i);

 D_ASSERT(device, list_empty(&device->read_ee));
 D_ASSERT(device, list_empty(&device->active_ee));
 D_ASSERT(device, list_empty(&device->sync_ee));
 D_ASSERT(device, list_empty(&device->done_ee));

 return 0;
}
