
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int this_bdev; } ;
typedef int sector_t ;
typedef enum update_sync_bits_mode { ____Placeholder_update_sync_bits_mode } update_sync_bits_mode ;


 int BM_SECT_PER_BIT ;
 unsigned long BM_SECT_TO_BIT (int) ;
 int SET_IN_SYNC ;
 int SET_OUT_OF_SYNC ;
 int * drbd_change_sync_fname ;
 int drbd_err (struct drbd_device*,char*,int ,unsigned long long,int) ;
 int drbd_get_capacity (int ) ;
 int expect (int) ;
 int get_ldev (struct drbd_device*) ;
 int plausible_request_size (int) ;
 int put_ldev (struct drbd_device*) ;
 scalar_t__ unlikely (int) ;
 unsigned long update_sync_bits (struct drbd_device*,unsigned long,unsigned long,int) ;

int __drbd_change_sync(struct drbd_device *device, sector_t sector, int size,
  enum update_sync_bits_mode mode)
{

 unsigned long sbnr, ebnr, lbnr;
 unsigned long count = 0;
 sector_t esector, nr_sectors;


 if ((mode == SET_OUT_OF_SYNC) && size == 0)
  return 0;

 if (!plausible_request_size(size)) {
  drbd_err(device, "%s: sector=%llus size=%d nonsense!\n",
    drbd_change_sync_fname[mode],
    (unsigned long long)sector, size);
  return 0;
 }

 if (!get_ldev(device))
  return 0;

 nr_sectors = drbd_get_capacity(device->this_bdev);
 esector = sector + (size >> 9) - 1;

 if (!expect(sector < nr_sectors))
  goto out;
 if (!expect(esector < nr_sectors))
  esector = nr_sectors - 1;

 lbnr = BM_SECT_TO_BIT(nr_sectors-1);

 if (mode == SET_IN_SYNC) {


  if (unlikely(esector < BM_SECT_PER_BIT-1))
   goto out;
  if (unlikely(esector == (nr_sectors-1)))
   ebnr = lbnr;
  else
   ebnr = BM_SECT_TO_BIT(esector - (BM_SECT_PER_BIT-1));
  sbnr = BM_SECT_TO_BIT(sector + BM_SECT_PER_BIT-1);
 } else {


  sbnr = BM_SECT_TO_BIT(sector);
  ebnr = BM_SECT_TO_BIT(esector);
 }

 count = update_sync_bits(device, sbnr, ebnr, mode);
out:
 put_ldev(device);
 return count;
}
