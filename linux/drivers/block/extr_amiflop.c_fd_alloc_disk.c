
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gendisk {int * queue; } ;
struct TYPE_4__ {TYPE_1__* type; int tag_set; int trackbuf; } ;
struct TYPE_3__ {int code; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int FD_NODRIVE ;
 int FLOPPY_MAX_SECTORS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 struct gendisk* alloc_disk (int) ;
 int amiflop_mq_ops ;
 int blk_cleanup_queue (int *) ;
 int blk_mq_free_tag_set (int *) ;
 int * blk_mq_init_sq_queue (int *,int *,int,int ) ;
 int kmalloc (int,int ) ;
 int put_disk (struct gendisk*) ;
 TYPE_2__* unit ;

__attribute__((used)) static struct gendisk *fd_alloc_disk(int drive)
{
 struct gendisk *disk;

 disk = alloc_disk(1);
 if (!disk)
  goto out;

 disk->queue = blk_mq_init_sq_queue(&unit[drive].tag_set, &amiflop_mq_ops,
      2, BLK_MQ_F_SHOULD_MERGE);
 if (IS_ERR(disk->queue)) {
  disk->queue = ((void*)0);
  goto out_put_disk;
 }

 unit[drive].trackbuf = kmalloc(FLOPPY_MAX_SECTORS * 512, GFP_KERNEL);
 if (!unit[drive].trackbuf)
  goto out_cleanup_queue;

 return disk;

out_cleanup_queue:
 blk_cleanup_queue(disk->queue);
 disk->queue = ((void*)0);
 blk_mq_free_tag_set(&unit[drive].tag_set);
out_put_disk:
 put_disk(disk);
out:
 unit[drive].type->code = FD_NODRIVE;
 return ((void*)0);
}
