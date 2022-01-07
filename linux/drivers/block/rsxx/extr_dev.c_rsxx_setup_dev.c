
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_14__ ;


struct TYPE_16__ {unsigned short block_size; } ;
struct TYPE_17__ {TYPE_1__ data; } ;
struct rsxx_cardinfo {scalar_t__ major; int disk_id; TYPE_4__* queue; TYPE_14__* gendisk; TYPE_2__ config; scalar_t__ config_valid; int dev_lock; } ;
struct TYPE_18__ {int discard_granularity; int discard_alignment; } ;
struct TYPE_19__ {struct rsxx_cardinfo* queuedata; TYPE_3__ limits; } ;
struct TYPE_15__ {scalar_t__ major; TYPE_4__* queue; struct rsxx_cardinfo* private_data; int * fops; scalar_t__ first_minor; int disk_name; } ;


 int CARD_TO_DEV (struct rsxx_cardinfo*) ;
 int DRIVER_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_DISCARD ;
 int QUEUE_FLAG_NONROT ;
 int RSXX_HW_BLK_SIZE ;
 TYPE_14__* alloc_disk (int ) ;
 TYPE_4__* blk_alloc_queue (int ) ;
 int blk_cleanup_queue (TYPE_4__*) ;
 int blk_queue_dma_alignment (TYPE_4__*,unsigned short) ;
 int blk_queue_flag_clear (int ,TYPE_4__*) ;
 int blk_queue_flag_set (int ,TYPE_4__*) ;
 int blk_queue_logical_block_size (TYPE_4__*,unsigned short) ;
 int blk_queue_make_request (TYPE_4__*,int ) ;
 int blk_queue_max_discard_sectors (TYPE_4__*,int) ;
 int blk_queue_max_hw_sectors (TYPE_4__*,int ) ;
 int blk_queue_physical_block_size (TYPE_4__*,int) ;
 int blkdev_max_hw_sectors ;
 int blkdev_minors ;
 int dev_err (int ,char*) ;
 int enable_blkdev ;
 int mutex_init (int *) ;
 scalar_t__ register_blkdev (int ,int ) ;
 scalar_t__ rsxx_discard_supported (struct rsxx_cardinfo*) ;
 int rsxx_fops ;
 int rsxx_make_request ;
 int snprintf (int ,int,char*,int) ;
 int unregister_blkdev (scalar_t__,int ) ;

int rsxx_setup_dev(struct rsxx_cardinfo *card)
{
 unsigned short blk_size;

 mutex_init(&card->dev_lock);

 if (!enable_blkdev)
  return 0;

 card->major = register_blkdev(0, DRIVER_NAME);
 if (card->major < 0) {
  dev_err(CARD_TO_DEV(card), "Failed to get major number\n");
  return -ENOMEM;
 }

 card->queue = blk_alloc_queue(GFP_KERNEL);
 if (!card->queue) {
  dev_err(CARD_TO_DEV(card), "Failed queue alloc\n");
  unregister_blkdev(card->major, DRIVER_NAME);
  return -ENOMEM;
 }

 card->gendisk = alloc_disk(blkdev_minors);
 if (!card->gendisk) {
  dev_err(CARD_TO_DEV(card), "Failed disk alloc\n");
  blk_cleanup_queue(card->queue);
  unregister_blkdev(card->major, DRIVER_NAME);
  return -ENOMEM;
 }

 if (card->config_valid) {
  blk_size = card->config.data.block_size;
  blk_queue_dma_alignment(card->queue, blk_size - 1);
  blk_queue_logical_block_size(card->queue, blk_size);
 }

 blk_queue_make_request(card->queue, rsxx_make_request);
 blk_queue_max_hw_sectors(card->queue, blkdev_max_hw_sectors);
 blk_queue_physical_block_size(card->queue, RSXX_HW_BLK_SIZE);

 blk_queue_flag_set(QUEUE_FLAG_NONROT, card->queue);
 blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, card->queue);
 if (rsxx_discard_supported(card)) {
  blk_queue_flag_set(QUEUE_FLAG_DISCARD, card->queue);
  blk_queue_max_discard_sectors(card->queue,
      RSXX_HW_BLK_SIZE >> 9);
  card->queue->limits.discard_granularity = RSXX_HW_BLK_SIZE;
  card->queue->limits.discard_alignment = RSXX_HW_BLK_SIZE;
 }

 card->queue->queuedata = card;

 snprintf(card->gendisk->disk_name, sizeof(card->gendisk->disk_name),
   "rsxx%d", card->disk_id);
 card->gendisk->major = card->major;
 card->gendisk->first_minor = 0;
 card->gendisk->fops = &rsxx_fops;
 card->gendisk->private_data = card;
 card->gendisk->queue = card->queue;

 return 0;
}
