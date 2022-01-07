
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct nbd_device {TYPE_2__* disk; struct nbd_config* config; } ;
struct nbd_config {int flags; int bytesize; int blksize; } ;
struct block_device {int bd_invalidated; scalar_t__ bd_disk; } ;
struct TYPE_8__ {int discard_alignment; int discard_granularity; } ;
struct TYPE_11__ {TYPE_1__ limits; } ;
struct TYPE_10__ {int kobj; } ;
struct TYPE_9__ {TYPE_4__* queue; } ;


 int KOBJ_CHANGE ;
 int NBD_FLAG_SEND_TRIM ;
 int UINT_MAX ;
 int bd_set_size (struct block_device*,int) ;
 struct block_device* bdget_disk (TYPE_2__*,int ) ;
 int bdput (struct block_device*) ;
 int blk_queue_logical_block_size (TYPE_4__*,int ) ;
 int blk_queue_max_discard_sectors (TYPE_4__*,int ) ;
 int blk_queue_physical_block_size (TYPE_4__*,int ) ;
 int kobject_uevent (int *,int ) ;
 TYPE_3__* nbd_to_dev (struct nbd_device*) ;
 int set_blocksize (struct block_device*,int ) ;
 int set_capacity (TYPE_2__*,int) ;

__attribute__((used)) static void nbd_size_update(struct nbd_device *nbd)
{
 struct nbd_config *config = nbd->config;
 struct block_device *bdev = bdget_disk(nbd->disk, 0);

 if (config->flags & NBD_FLAG_SEND_TRIM) {
  nbd->disk->queue->limits.discard_granularity = config->blksize;
  nbd->disk->queue->limits.discard_alignment = config->blksize;
  blk_queue_max_discard_sectors(nbd->disk->queue, UINT_MAX);
 }
 blk_queue_logical_block_size(nbd->disk->queue, config->blksize);
 blk_queue_physical_block_size(nbd->disk->queue, config->blksize);
 set_capacity(nbd->disk, config->bytesize >> 9);
 if (bdev) {
  if (bdev->bd_disk) {
   bd_set_size(bdev, config->bytesize);
   set_blocksize(bdev, config->blksize);
  } else
   bdev->bd_invalidated = 1;
  bdput(bdev);
 }
 kobject_uevent(&nbd_to_dev(nbd)->kobj, KOBJ_CHANGE);
}
