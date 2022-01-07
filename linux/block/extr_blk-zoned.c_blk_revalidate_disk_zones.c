
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int nr_zones; int seq_zones_bitmap; int seq_zones_wlock; int node; } ;
struct gendisk {int disk_name; struct request_queue* queue; } ;
struct blk_zone {scalar_t__ type; } ;
typedef unsigned int sector_t ;


 scalar_t__ BLK_ZONE_TYPE_CONVENTIONAL ;
 int EIO ;
 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 unsigned int __blkdev_nr_zones (struct request_queue*,int ) ;
 unsigned long* blk_alloc_zone_bitmap (int ,unsigned int) ;
 struct blk_zone* blk_alloc_zones (unsigned int*) ;
 int blk_mq_freeze_queue (struct request_queue*) ;
 int blk_mq_unfreeze_queue (struct request_queue*) ;
 int blk_queue_free_zone_bitmaps (struct request_queue*) ;
 int blk_queue_is_zoned (struct request_queue*) ;
 unsigned int blk_queue_zone_sectors (struct request_queue*) ;
 int blk_report_zones (struct gendisk*,unsigned int,struct blk_zone*,unsigned int*) ;
 int get_capacity (struct gendisk*) ;
 int kfree (unsigned long*) ;
 int kvfree (struct blk_zone*) ;
 int memalloc_noio_restore (unsigned int) ;
 unsigned int memalloc_noio_save () ;
 unsigned int min (unsigned int,unsigned int) ;
 int pr_warn (char*,int ) ;
 int queue_is_mq (struct request_queue*) ;
 int set_bit (unsigned int,unsigned long*) ;
 int swap (int ,unsigned long*) ;

int blk_revalidate_disk_zones(struct gendisk *disk)
{
 struct request_queue *q = disk->queue;
 unsigned int nr_zones = __blkdev_nr_zones(q, get_capacity(disk));
 unsigned long *seq_zones_wlock = ((void*)0), *seq_zones_bitmap = ((void*)0);
 unsigned int i, rep_nr_zones = 0, z = 0, nrz;
 struct blk_zone *zones = ((void*)0);
 unsigned int noio_flag;
 sector_t sector = 0;
 int ret = 0;





 if (!queue_is_mq(q)) {
  q->nr_zones = nr_zones;
  return 0;
 }





 noio_flag = memalloc_noio_save();

 if (!blk_queue_is_zoned(q) || !nr_zones) {
  nr_zones = 0;
  goto update;
 }


 ret = -ENOMEM;
 seq_zones_wlock = blk_alloc_zone_bitmap(q->node, nr_zones);
 if (!seq_zones_wlock)
  goto out;
 seq_zones_bitmap = blk_alloc_zone_bitmap(q->node, nr_zones);
 if (!seq_zones_bitmap)
  goto out;


 rep_nr_zones = nr_zones;
 zones = blk_alloc_zones(&rep_nr_zones);
 if (!zones)
  goto out;

 while (z < nr_zones) {
  nrz = min(nr_zones - z, rep_nr_zones);
  ret = blk_report_zones(disk, sector, zones, &nrz);
  if (ret)
   goto out;
  if (!nrz)
   break;
  for (i = 0; i < nrz; i++) {
   if (zones[i].type != BLK_ZONE_TYPE_CONVENTIONAL)
    set_bit(z, seq_zones_bitmap);
   z++;
  }
  sector += nrz * blk_queue_zone_sectors(q);
 }

 if (WARN_ON(z != nr_zones)) {
  ret = -EIO;
  goto out;
 }

update:





 blk_mq_freeze_queue(q);
 q->nr_zones = nr_zones;
 swap(q->seq_zones_wlock, seq_zones_wlock);
 swap(q->seq_zones_bitmap, seq_zones_bitmap);
 blk_mq_unfreeze_queue(q);

out:
 memalloc_noio_restore(noio_flag);

 kvfree(zones);
 kfree(seq_zones_wlock);
 kfree(seq_zones_bitmap);

 if (ret) {
  pr_warn("%s: failed to revalidate zones\n", disk->disk_name);
  blk_mq_freeze_queue(q);
  blk_queue_free_zone_bitmaps(q);
  blk_mq_unfreeze_queue(q);
 }

 return ret;
}
