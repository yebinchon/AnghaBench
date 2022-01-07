
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nullb {TYPE_1__* dev; int disk_name; int q; int index; struct gendisk* disk; } ;
struct gendisk {int flags; int disk_name; int queue; struct nullb* private_data; int * fops; int first_minor; int major; } ;
typedef int sector_t ;
struct TYPE_2__ {scalar_t__ zoned; scalar_t__ size; int home_node; } ;


 int DISK_NAME_LEN ;
 int ENOMEM ;
 int GENHD_FL_EXT_DEVT ;
 int GENHD_FL_SUPPRESS_PARTITION_INFO ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk_node (int,int ) ;
 int blk_revalidate_disk_zones (struct gendisk*) ;
 int null_fops ;
 int null_major ;
 int set_capacity (struct gendisk*,int) ;
 int strncpy (int ,int ,int ) ;

__attribute__((used)) static int null_gendisk_register(struct nullb *nullb)
{
 struct gendisk *disk;
 sector_t size;

 disk = nullb->disk = alloc_disk_node(1, nullb->dev->home_node);
 if (!disk)
  return -ENOMEM;
 size = (sector_t)nullb->dev->size * 1024 * 1024ULL;
 set_capacity(disk, size >> 9);

 disk->flags |= GENHD_FL_EXT_DEVT | GENHD_FL_SUPPRESS_PARTITION_INFO;
 disk->major = null_major;
 disk->first_minor = nullb->index;
 disk->fops = &null_fops;
 disk->private_data = nullb;
 disk->queue = nullb->q;
 strncpy(disk->disk_name, nullb->disk_name, DISK_NAME_LEN);

 if (nullb->dev->zoned) {
  int ret = blk_revalidate_disk_zones(disk);

  if (ret != 0)
   return ret;
 }

 add_disk(disk);
 return 0;
}
