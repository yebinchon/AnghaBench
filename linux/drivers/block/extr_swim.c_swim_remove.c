
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct swim_priv {int floppy_count; TYPE_2__* unit; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct TYPE_5__ {TYPE_1__* disk; int tag_set; } ;
struct TYPE_4__ {int queue; } ;


 int FLOPPY_MAJOR ;
 int IORESOURCE_MEM ;
 int MKDEV (int ,int ) ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int blk_unregister_region (int ,int) ;
 int del_gendisk (TYPE_1__*) ;
 int floppy_eject (TYPE_2__*) ;
 int kfree (struct swim_priv*) ;
 struct swim_priv* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int put_disk (TYPE_1__*) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;
 int unregister_blkdev (int ,char*) ;

__attribute__((used)) static int swim_remove(struct platform_device *dev)
{
 struct swim_priv *swd = platform_get_drvdata(dev);
 int drive;
 struct resource *res;

 blk_unregister_region(MKDEV(FLOPPY_MAJOR, 0), 256);

 for (drive = 0; drive < swd->floppy_count; drive++) {
  del_gendisk(swd->unit[drive].disk);
  blk_cleanup_queue(swd->unit[drive].disk->queue);
  blk_mq_free_tag_set(&swd->unit[drive].tag_set);
  put_disk(swd->unit[drive].disk);
 }

 unregister_blkdev(FLOPPY_MAJOR, "fd");



 for (drive = 0; drive < swd->floppy_count; drive++)
  floppy_eject(&swd->unit[drive]);

 res = platform_get_resource(dev, IORESOURCE_MEM, 0);
 if (res)
  release_mem_region(res->start, resource_size(res));

 kfree(swd);

 return 0;
}
