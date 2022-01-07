
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ disk; } ;
struct drbd_device {int this_bdev; TYPE_1__ state; } ;
typedef scalar_t__ sector_t ;


 unsigned long BM_SECT_TO_BIT (scalar_t__) ;
 int D_ASSERT (struct drbd_device*,int) ;
 scalar_t__ D_INCONSISTENT ;
 scalar_t__ D_UP_TO_DATE ;
 scalar_t__ drbd_bm_count_bits (struct drbd_device*,unsigned long,unsigned long) ;
 scalar_t__ drbd_get_capacity (int ) ;

__attribute__((used)) static bool drbd_may_do_local_read(struct drbd_device *device, sector_t sector, int size)
{
 unsigned long sbnr, ebnr;
 sector_t esector, nr_sectors;

 if (device->state.disk == D_UP_TO_DATE)
  return 1;
 if (device->state.disk != D_INCONSISTENT)
  return 0;
 esector = sector + (size >> 9) - 1;
 nr_sectors = drbd_get_capacity(device->this_bdev);
 D_ASSERT(device, sector < nr_sectors);
 D_ASSERT(device, esector < nr_sectors);

 sbnr = BM_SECT_TO_BIT(sector);
 ebnr = BM_SECT_TO_BIT(esector);

 return drbd_bm_count_bits(device, sbnr, ebnr) == 0;
}
