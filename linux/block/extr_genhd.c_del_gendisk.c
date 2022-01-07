
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct hd_struct {int partno; } ;
struct TYPE_9__ {scalar_t__ stamp; int holder_dir; } ;
struct gendisk {int flags; TYPE_3__ part0; int slave_dir; int minors; TYPE_1__* queue; int lookup_sem; } ;
struct disk_part_iter {int dummy; } ;
struct TYPE_8__ {int kobj; } ;
struct TYPE_7__ {int backing_dev_info; } ;


 int DISK_PITER_INCL_EMPTY ;
 int DISK_PITER_REVERSE ;
 int GENHD_FL_HIDDEN ;
 int GENHD_FL_UP ;
 int WARN_ON (int) ;
 int bdev_unhash_inode (int ) ;
 int bdi_unregister (int ) ;
 int blk_integrity_del (struct gendisk*) ;
 int blk_invalidate_devt (int ) ;
 int blk_unregister_queue (struct gendisk*) ;
 int blk_unregister_region (int ,int ) ;
 int * block_depr ;
 int delete_partition (struct gendisk*,int ) ;
 char* dev_name (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int disk_del_events (struct gendisk*) ;
 int disk_devt (struct gendisk*) ;
 int disk_part_iter_exit (struct disk_part_iter*) ;
 int disk_part_iter_init (struct disk_part_iter*,struct gendisk*,int) ;
 struct hd_struct* disk_part_iter_next (struct disk_part_iter*) ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int down_write (int *) ;
 int invalidate_partition (struct gendisk*,int ) ;
 int kobject_put (int ) ;
 int part_devt (struct hd_struct*) ;
 int part_stat_set_all (TYPE_3__*,int ) ;
 int pm_runtime_set_memalloc_noio (TYPE_2__*,int) ;
 int set_capacity (struct gendisk*,int ) ;
 int sysfs_deprecated ;
 int sysfs_remove_link (int *,char*) ;
 int up_write (int *) ;

void del_gendisk(struct gendisk *disk)
{
 struct disk_part_iter piter;
 struct hd_struct *part;

 blk_integrity_del(disk);
 disk_del_events(disk);





 down_write(&disk->lookup_sem);

 disk_part_iter_init(&piter, disk,
        DISK_PITER_INCL_EMPTY | DISK_PITER_REVERSE);
 while ((part = disk_part_iter_next(&piter))) {
  invalidate_partition(disk, part->partno);
  bdev_unhash_inode(part_devt(part));
  delete_partition(disk, part->partno);
 }
 disk_part_iter_exit(&piter);

 invalidate_partition(disk, 0);
 bdev_unhash_inode(disk_devt(disk));
 set_capacity(disk, 0);
 disk->flags &= ~GENHD_FL_UP;
 up_write(&disk->lookup_sem);

 if (!(disk->flags & GENHD_FL_HIDDEN))
  sysfs_remove_link(&disk_to_dev(disk)->kobj, "bdi");
 if (disk->queue) {




  if (!(disk->flags & GENHD_FL_HIDDEN))
   bdi_unregister(disk->queue->backing_dev_info);
  blk_unregister_queue(disk);
 } else {
  WARN_ON(1);
 }

 if (!(disk->flags & GENHD_FL_HIDDEN))
  blk_unregister_region(disk_devt(disk), disk->minors);






 blk_invalidate_devt(disk_devt(disk));

 kobject_put(disk->part0.holder_dir);
 kobject_put(disk->slave_dir);

 part_stat_set_all(&disk->part0, 0);
 disk->part0.stamp = 0;
 if (!sysfs_deprecated)
  sysfs_remove_link(block_depr, dev_name(disk_to_dev(disk)));
 pm_runtime_set_memalloc_noio(disk_to_dev(disk), 0);
 device_del(disk_to_dev(disk));
}
