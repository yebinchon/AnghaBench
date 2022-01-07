
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {unsigned long rs_failed; int al_wait; int al_lock; } ;
typedef enum update_sync_bits_mode { ____Placeholder_update_sync_bits_mode } update_sync_bits_mode ;


 int BM_BIT_TO_EXT (unsigned long) ;
 unsigned long BM_BLOCKS_PER_BM_EXT_MASK ;
 int RECORD_RS_FAILED ;
 int SET_IN_SYNC ;
 int drbd_advance_rs_marks (struct drbd_device*,unsigned long) ;
 unsigned long drbd_bm_clear_bits (struct drbd_device*,unsigned long,unsigned long) ;
 unsigned long drbd_bm_count_bits (struct drbd_device*,unsigned long,unsigned long) ;
 unsigned long drbd_bm_set_bits (struct drbd_device*,unsigned long,unsigned long) ;
 unsigned long drbd_bm_total_weight (struct drbd_device*) ;
 int maybe_schedule_on_disk_bitmap_update (struct drbd_device*,int) ;
 unsigned long min (unsigned long,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ update_rs_extent (struct drbd_device*,int ,unsigned long,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int update_sync_bits(struct drbd_device *device,
  unsigned long sbnr, unsigned long ebnr,
  enum update_sync_bits_mode mode)
{





 unsigned long flags;
 unsigned long count = 0;
 unsigned int cleared = 0;
 while (sbnr <= ebnr) {



  unsigned long tbnr = min(ebnr, sbnr | BM_BLOCKS_PER_BM_EXT_MASK);
  unsigned long c;

  if (mode == RECORD_RS_FAILED)





   c = drbd_bm_count_bits(device, sbnr, tbnr);
  else if (mode == SET_IN_SYNC)
   c = drbd_bm_clear_bits(device, sbnr, tbnr);
  else
   c = drbd_bm_set_bits(device, sbnr, tbnr);

  if (c) {
   spin_lock_irqsave(&device->al_lock, flags);
   cleared += update_rs_extent(device, BM_BIT_TO_EXT(sbnr), c, mode);
   spin_unlock_irqrestore(&device->al_lock, flags);
   count += c;
  }
  sbnr = tbnr + 1;
 }
 if (count) {
  if (mode == SET_IN_SYNC) {
   unsigned long still_to_go = drbd_bm_total_weight(device);
   bool rs_is_done = (still_to_go <= device->rs_failed);
   drbd_advance_rs_marks(device, still_to_go);
   if (cleared || rs_is_done)
    maybe_schedule_on_disk_bitmap_update(device, rs_is_done);
  } else if (mode == RECORD_RS_FAILED)
   device->rs_failed += count;
  wake_up(&device->al_wait);
 }
 return count;
}
