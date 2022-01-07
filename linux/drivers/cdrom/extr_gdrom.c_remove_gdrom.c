
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_3__ {int cd_info; int disk; int tag_set; int gdrom_rq; } ;


 int GDROM_DEV_NAME ;
 int HW_EVENT_GDROM_CMD ;
 int HW_EVENT_GDROM_DMA ;
 int blk_cleanup_queue (int ) ;
 int blk_mq_free_tag_set (int *) ;
 int del_gendisk (int ) ;
 int free_irq (int ,TYPE_1__*) ;
 TYPE_1__ gd ;
 scalar_t__ gdrom_major ;
 int unregister_blkdev (scalar_t__,int ) ;
 int unregister_cdrom (int ) ;

__attribute__((used)) static int remove_gdrom(struct platform_device *devptr)
{
 blk_cleanup_queue(gd.gdrom_rq);
 blk_mq_free_tag_set(&gd.tag_set);
 free_irq(HW_EVENT_GDROM_CMD, &gd);
 free_irq(HW_EVENT_GDROM_DMA, &gd);
 del_gendisk(gd.disk);
 if (gdrom_major)
  unregister_blkdev(gdrom_major, GDROM_DEV_NAME);
 unregister_cdrom(gd.cd_info);

 return 0;
}
