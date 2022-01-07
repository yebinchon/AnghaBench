
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int meta_dev_idx; scalar_t__ md_offset; scalar_t__ bm_offset; } ;
struct drbd_backing_dev {TYPE_1__ md; } ;
typedef scalar_t__ sector_t ;






__attribute__((used)) static inline sector_t drbd_md_first_sector(struct drbd_backing_dev *bdev)
{
 switch (bdev->md.meta_dev_idx) {
 case 128:
 case 129:
  return bdev->md.md_offset + bdev->md.bm_offset;
 case 130:
 default:
  return bdev->md.md_offset;
 }
}
