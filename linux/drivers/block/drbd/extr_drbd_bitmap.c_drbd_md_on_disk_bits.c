
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int al_offset; int md_size_sect; int bm_offset; } ;
struct drbd_backing_dev {TYPE_1__ md; } ;



__attribute__((used)) static u64 drbd_md_on_disk_bits(struct drbd_backing_dev *ldev)
{
 u64 bitmap_sectors;
 if (ldev->md.al_offset == 8)
  bitmap_sectors = ldev->md.md_size_sect - ldev->md.bm_offset;
 else
  bitmap_sectors = ldev->md.al_offset - ldev->md.bm_offset;
 return bitmap_sectors << (9 + 3);
}
