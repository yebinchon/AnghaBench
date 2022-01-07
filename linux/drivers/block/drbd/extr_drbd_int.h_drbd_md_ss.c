
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int meta_dev_idx; } ;
struct drbd_backing_dev {TYPE_1__ md; int backing_bdev; } ;
typedef unsigned long long sector_t ;


 int const DRBD_MD_INDEX_FLEX_EXT ;
 int const DRBD_MD_INDEX_FLEX_INT ;
 int const DRBD_MD_INDEX_INTERNAL ;
 unsigned long long MD_128MB_SECT ;
 unsigned long long drbd_get_capacity (int ) ;

__attribute__((used)) static inline sector_t drbd_md_ss(struct drbd_backing_dev *bdev)
{
 const int meta_dev_idx = bdev->md.meta_dev_idx;

 if (meta_dev_idx == DRBD_MD_INDEX_FLEX_EXT)
  return 0;



 if (meta_dev_idx == DRBD_MD_INDEX_INTERNAL ||
     meta_dev_idx == DRBD_MD_INDEX_FLEX_INT)
  return (drbd_get_capacity(bdev->backing_bdev) & ~7ULL) - 8;


 return MD_128MB_SECT * bdev->md.meta_dev_idx;
}
