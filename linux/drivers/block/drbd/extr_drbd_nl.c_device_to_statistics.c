
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct request_queue {int backing_dev_info; } ;
struct drbd_md {int flags; int uuid_lock; scalar_t__* uuid; } ;
struct drbd_device {int ed_uuid; int flags; int local_cnt; int ap_bio_cnt; int bm_writ_cnt; int al_writ_cnt; int writ_cnt; int read_cnt; int this_bdev; TYPE_1__* ldev; } ;
struct device_statistics {int dev_upper_blocked; int history_uuids_len; int dev_exposed_data_uuid; int dev_al_suspended; void* dev_lower_pending; void* dev_upper_pending; int dev_bm_writes; int dev_al_writes; int dev_write; int dev_read; int dev_size; int dev_lower_blocked; int dev_disk_flags; scalar_t__ dev_current_uuid; scalar_t__ history_uuids; } ;
struct TYPE_2__ {int backing_bdev; struct drbd_md md; } ;


 int AL_SUSPENDED ;
 int BUILD_BUG_ON (int) ;
 int HISTORY_UUIDS ;
 size_t UI_CURRENT ;
 size_t UI_HISTORY_END ;
 size_t UI_HISTORY_START ;
 int WB_async_congested ;
 int WB_sync_congested ;
 void* atomic_read (int *) ;
 struct request_queue* bdev_get_queue (int ) ;
 int bdi_congested (int ,int) ;
 int drbd_get_capacity (int ) ;
 scalar_t__ get_ldev (struct drbd_device*) ;
 int may_inc_ap_bio (struct drbd_device*) ;
 int memset (struct device_statistics*,int ,int) ;
 int put_ldev (struct drbd_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void device_to_statistics(struct device_statistics *s,
     struct drbd_device *device)
{
 memset(s, 0, sizeof(*s));
 s->dev_upper_blocked = !may_inc_ap_bio(device);
 if (get_ldev(device)) {
  struct drbd_md *md = &device->ldev->md;
  u64 *history_uuids = (u64 *)s->history_uuids;
  struct request_queue *q;
  int n;

  spin_lock_irq(&md->uuid_lock);
  s->dev_current_uuid = md->uuid[UI_CURRENT];
  BUILD_BUG_ON(sizeof(s->history_uuids) < UI_HISTORY_END - UI_HISTORY_START + 1);
  for (n = 0; n < UI_HISTORY_END - UI_HISTORY_START + 1; n++)
   history_uuids[n] = md->uuid[UI_HISTORY_START + n];
  for (; n < HISTORY_UUIDS; n++)
   history_uuids[n] = 0;
  s->history_uuids_len = HISTORY_UUIDS;
  spin_unlock_irq(&md->uuid_lock);

  s->dev_disk_flags = md->flags;
  q = bdev_get_queue(device->ldev->backing_bdev);
  s->dev_lower_blocked =
   bdi_congested(q->backing_dev_info,
          (1 << WB_async_congested) |
          (1 << WB_sync_congested));
  put_ldev(device);
 }
 s->dev_size = drbd_get_capacity(device->this_bdev);
 s->dev_read = device->read_cnt;
 s->dev_write = device->writ_cnt;
 s->dev_al_writes = device->al_writ_cnt;
 s->dev_bm_writes = device->bm_writ_cnt;
 s->dev_upper_pending = atomic_read(&device->ap_bio_cnt);
 s->dev_lower_pending = atomic_read(&device->local_cnt);
 s->dev_al_suspended = test_bit(AL_SUSPENDED, &device->flags);
 s->dev_exposed_data_uuid = device->ed_uuid;
}
