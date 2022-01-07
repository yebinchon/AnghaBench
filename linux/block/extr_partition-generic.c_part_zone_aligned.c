
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct gendisk {int dummy; } ;
struct block_device {int dummy; } ;
typedef scalar_t__ sector_t ;


 scalar_t__ WARN_ON_ONCE (int) ;
 unsigned int bdev_zone_sectors (struct block_device*) ;
 int div_u64_rem (scalar_t__,unsigned int,scalar_t__*) ;
 scalar_t__ get_capacity (struct gendisk*) ;
 int is_power_of_2 (unsigned int) ;

__attribute__((used)) static bool part_zone_aligned(struct gendisk *disk,
         struct block_device *bdev,
         sector_t from, sector_t size)
{
 unsigned int zone_sectors = bdev_zone_sectors(bdev);
 if (!zone_sectors)
  return 1;







 if (WARN_ON_ONCE(!is_power_of_2(zone_sectors))) {
  u32 rem;

  div_u64_rem(from, zone_sectors, &rem);
  if (rem)
   return 0;
  if ((from + size) < get_capacity(disk)) {
   div_u64_rem(size, zone_sectors, &rem);
   if (rem)
    return 0;
  }

 } else {

  if (from & (zone_sectors - 1))
   return 0;
  if ((from + size) < get_capacity(disk) &&
      (size & (zone_sectors - 1)))
   return 0;

 }

 return 1;
}
