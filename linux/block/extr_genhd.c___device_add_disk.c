
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct gendisk {int flags; TYPE_1__* queue; scalar_t__ minors; scalar_t__ first_minor; scalar_t__ major; int part0; } ;
struct device {int dummy; } ;
struct attribute_group {int dummy; } ;
typedef int dev_t ;
struct TYPE_6__ {int devt; } ;
struct TYPE_5__ {int backing_dev_info; } ;


 int GENHD_FL_EXT_DEVT ;
 int GENHD_FL_HIDDEN ;
 int GENHD_FL_NO_PART_SCAN ;
 int GENHD_FL_SUPPRESS_PARTITION_INFO ;
 int GENHD_FL_UP ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 int WARN_ON (int) ;
 int WARN_ON_ONCE (int) ;
 int bdi_register_owner (int ,TYPE_2__*) ;
 int blk_alloc_devt (int *,int *) ;
 int blk_get_queue (TYPE_1__*) ;
 int blk_integrity_add (struct gendisk*) ;
 int blk_register_queue (struct gendisk*) ;
 int blk_register_region (int ,scalar_t__,int *,int ,int ,struct gendisk*) ;
 int disk_add_events (struct gendisk*) ;
 int disk_alloc_events (struct gendisk*) ;
 int disk_devt (struct gendisk*) ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int elevator_init_mq (TYPE_1__*) ;
 int exact_lock ;
 int exact_match ;
 int register_disk (struct device*,struct gendisk*,struct attribute_group const**) ;

__attribute__((used)) static void __device_add_disk(struct device *parent, struct gendisk *disk,
         const struct attribute_group **groups,
         bool register_queue)
{
 dev_t devt;
 int retval;







 if (register_queue)
  elevator_init_mq(disk->queue);





 WARN_ON(disk->minors && !(disk->major || disk->first_minor));
 WARN_ON(!disk->minors &&
  !(disk->flags & (GENHD_FL_EXT_DEVT | GENHD_FL_HIDDEN)));

 disk->flags |= GENHD_FL_UP;

 retval = blk_alloc_devt(&disk->part0, &devt);
 if (retval) {
  WARN_ON(1);
  return;
 }
 disk->major = MAJOR(devt);
 disk->first_minor = MINOR(devt);

 disk_alloc_events(disk);

 if (disk->flags & GENHD_FL_HIDDEN) {




  disk->flags |= GENHD_FL_SUPPRESS_PARTITION_INFO;
  disk->flags |= GENHD_FL_NO_PART_SCAN;
 } else {
  int ret;


  disk_to_dev(disk)->devt = devt;
  ret = bdi_register_owner(disk->queue->backing_dev_info,
      disk_to_dev(disk));
  WARN_ON(ret);
  blk_register_region(disk_devt(disk), disk->minors, ((void*)0),
        exact_match, exact_lock, disk);
 }
 register_disk(parent, disk, groups);
 if (register_queue)
  blk_register_queue(disk);





 WARN_ON_ONCE(!blk_get_queue(disk->queue));

 disk_add_events(disk);
 blk_integrity_add(disk);
}
