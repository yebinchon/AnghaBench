
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct gdromtoc {int dummy; } ;
struct cdrom_device_info {int dummy; } ;
struct TYPE_7__ {int events; int * fops; } ;
struct TYPE_6__ {void* cd_info; TYPE_3__* disk; int tag_set; int * gdrom_rq; void* toc; } ;


 int BLK_BOUNCE_HIGH ;
 int BLK_MQ_F_BLOCKING ;
 int BLK_MQ_F_SHOULD_MERGE ;
 int DISK_EVENT_MEDIA_CHANGE ;
 int ENODEV ;
 int ENOMEM ;
 int GDROM_DEV_NAME ;
 int GFP_KERNEL ;
 int HW_EVENT_GDROM_CMD ;
 int HW_EVENT_GDROM_DMA ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int add_disk (TYPE_3__*) ;
 TYPE_3__* alloc_disk (int) ;
 int blk_cleanup_queue (int *) ;
 int blk_mq_free_tag_set (int *) ;
 int * blk_mq_init_sq_queue (int *,int *,int,int) ;
 int blk_queue_bounce_limit (int *,int ) ;
 int del_gendisk (TYPE_3__*) ;
 int free_irq (int ,TYPE_1__*) ;
 TYPE_1__ gd ;
 int gdrom_bdops ;
 int gdrom_execute_diagnostic () ;
 scalar_t__ gdrom_major ;
 int gdrom_mq_ops ;
 scalar_t__ gdrom_outputversion () ;
 int gdrom_set_interrupt_handlers () ;
 int kfree (void*) ;
 void* kzalloc (int,int ) ;
 int pr_info (char*,scalar_t__) ;
 int pr_warning (char*,...) ;
 int probe_gdrom_setupcd () ;
 int probe_gdrom_setupdisk () ;
 int probe_gdrom_setupqueue () ;
 scalar_t__ register_blkdev (int ,int ) ;
 scalar_t__ register_cdrom (void*) ;
 int unregister_blkdev (scalar_t__,int ) ;

__attribute__((used)) static int probe_gdrom(struct platform_device *devptr)
{
 int err;

 if (gdrom_execute_diagnostic() != 1) {
  pr_warning("ATA Probe for GDROM failed\n");
  return -ENODEV;
 }

 if (gdrom_outputversion())
  return -ENOMEM;

 gdrom_major = register_blkdev(0, GDROM_DEV_NAME);
 if (gdrom_major <= 0)
  return gdrom_major;
 pr_info("Registered with major number %d\n",
  gdrom_major);

 gd.cd_info = kzalloc(sizeof(struct cdrom_device_info), GFP_KERNEL);
 if (!gd.cd_info) {
  err = -ENOMEM;
  goto probe_fail_no_mem;
 }
 probe_gdrom_setupcd();
 gd.disk = alloc_disk(1);
 if (!gd.disk) {
  err = -ENODEV;
  goto probe_fail_no_disk;
 }
 probe_gdrom_setupdisk();
 if (register_cdrom(gd.cd_info)) {
  err = -ENODEV;
  goto probe_fail_cdrom_register;
 }
 gd.disk->fops = &gdrom_bdops;
 gd.disk->events = DISK_EVENT_MEDIA_CHANGE;

 err = gdrom_set_interrupt_handlers();
 if (err)
  goto probe_fail_cmdirq_register;

 gd.gdrom_rq = blk_mq_init_sq_queue(&gd.tag_set, &gdrom_mq_ops, 1,
    BLK_MQ_F_SHOULD_MERGE | BLK_MQ_F_BLOCKING);
 if (IS_ERR(gd.gdrom_rq)) {
  err = PTR_ERR(gd.gdrom_rq);
  gd.gdrom_rq = ((void*)0);
  goto probe_fail_requestq;
 }

 blk_queue_bounce_limit(gd.gdrom_rq, BLK_BOUNCE_HIGH);

 err = probe_gdrom_setupqueue();
 if (err)
  goto probe_fail_toc;

 gd.toc = kzalloc(sizeof(struct gdromtoc), GFP_KERNEL);
 if (!gd.toc) {
  err = -ENOMEM;
  goto probe_fail_toc;
 }
 add_disk(gd.disk);
 return 0;

probe_fail_toc:
 blk_cleanup_queue(gd.gdrom_rq);
 blk_mq_free_tag_set(&gd.tag_set);
probe_fail_requestq:
 free_irq(HW_EVENT_GDROM_DMA, &gd);
 free_irq(HW_EVENT_GDROM_CMD, &gd);
probe_fail_cmdirq_register:
probe_fail_cdrom_register:
 del_gendisk(gd.disk);
probe_fail_no_disk:
 kfree(gd.cd_info);
probe_fail_no_mem:
 unregister_blkdev(gdrom_major, GDROM_DEV_NAME);
 gdrom_major = 0;
 pr_warning("Probe failed - error is 0x%X\n", err);
 return err;
}
