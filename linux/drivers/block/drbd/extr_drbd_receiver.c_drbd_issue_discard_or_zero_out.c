
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int discard_granularity; int max_discard_sectors; } ;
struct request_queue {TYPE_2__ limits; } ;
struct drbd_device {TYPE_1__* ldev; } ;
struct block_device {int dummy; } ;
typedef unsigned int sector_t ;
struct TYPE_3__ {struct block_device* backing_bdev; } ;


 int BLKDEV_ZERO_NOUNMAP ;
 int EE_TRIM ;
 int EE_ZEROOUT ;
 int GFP_NOIO ;
 int bdev_discard_alignment (struct block_device*) ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 int blkdev_issue_discard (struct block_device*,unsigned int,unsigned int,int ,int ) ;
 int blkdev_issue_zeroout (struct block_device*,unsigned int,unsigned int,int ,int ) ;
 unsigned int max (int,unsigned int) ;
 unsigned int min (int ,unsigned int) ;
 int sector_div (unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

int drbd_issue_discard_or_zero_out(struct drbd_device *device, sector_t start, unsigned int nr_sectors, int flags)
{
 struct block_device *bdev = device->ldev->backing_bdev;
 struct request_queue *q = bdev_get_queue(bdev);
 sector_t tmp, nr;
 unsigned int max_discard_sectors, granularity;
 int alignment;
 int err = 0;

 if ((flags & EE_ZEROOUT) || !(flags & EE_TRIM))
  goto zero_out;


 granularity = max(q->limits.discard_granularity >> 9, 1U);
 alignment = (bdev_discard_alignment(bdev) >> 9) % granularity;

 max_discard_sectors = min(q->limits.max_discard_sectors, (1U << 22));
 max_discard_sectors -= max_discard_sectors % granularity;
 if (unlikely(!max_discard_sectors))
  goto zero_out;

 if (nr_sectors < granularity)
  goto zero_out;

 tmp = start;
 if (sector_div(tmp, granularity) != alignment) {
  if (nr_sectors < 2*granularity)
   goto zero_out;

  tmp = start + granularity - alignment;
  tmp = start + granularity - sector_div(tmp, granularity);

  nr = tmp - start;


  err |= blkdev_issue_zeroout(bdev, start, nr, GFP_NOIO, 0);
  nr_sectors -= nr;
  start = tmp;
 }
 while (nr_sectors >= max_discard_sectors) {
  err |= blkdev_issue_discard(bdev, start, max_discard_sectors, GFP_NOIO, 0);
  nr_sectors -= max_discard_sectors;
  start += max_discard_sectors;
 }
 if (nr_sectors) {




  nr = nr_sectors;
  nr -= (unsigned int)nr % granularity;
  if (nr) {
   err |= blkdev_issue_discard(bdev, start, nr, GFP_NOIO, 0);
   nr_sectors -= nr;
   start += nr;
  }
 }
 zero_out:
 if (nr_sectors) {
  err |= blkdev_issue_zeroout(bdev, start, nr_sectors, GFP_NOIO,
    (flags & EE_TRIM) ? 0 : BLKDEV_ZERO_NOUNMAP);
 }
 return err != 0;
}
