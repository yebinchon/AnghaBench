
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tags; } ;
struct skd_device {struct gendisk* disk; TYPE_1__ tag_set; int * queue; } ;
struct gendisk {int flags; int * queue; } ;


 int GENHD_FL_UP ;
 int blk_cleanup_queue (int *) ;
 int blk_mq_free_tag_set (TYPE_1__*) ;
 int del_gendisk (struct gendisk*) ;
 int put_disk (struct gendisk*) ;

__attribute__((used)) static void skd_free_disk(struct skd_device *skdev)
{
 struct gendisk *disk = skdev->disk;

 if (disk && (disk->flags & GENHD_FL_UP))
  del_gendisk(disk);

 if (skdev->queue) {
  blk_cleanup_queue(skdev->queue);
  skdev->queue = ((void*)0);
  if (disk)
   disk->queue = ((void*)0);
 }

 if (skdev->tag_set.tags)
  blk_mq_free_tag_set(&skdev->tag_set);

 put_disk(disk);
 skdev->disk = ((void*)0);
}
