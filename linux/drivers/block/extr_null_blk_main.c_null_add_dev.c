
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct nullb_device {scalar_t__ queue_mode; scalar_t__ cache_size; int index; scalar_t__ zoned; int blocksize; int zone_size_sects; int flags; scalar_t__ mbps; int home_node; struct nullb* nullb; } ;
struct TYPE_19__ {int timeout; } ;
struct nullb {int index; TYPE_2__* tag_set; TYPE_2__ __tag_set; TYPE_4__* q; int list; int disk_name; struct nullb_device* dev; int lock; } ;
struct TYPE_18__ {int zoned; } ;
struct TYPE_20__ {struct nullb* queuedata; TYPE_1__ limits; } ;


 int BLK_ZONED_HM ;
 int ELEVATOR_F_ZBD_SEQ_WRITE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int NULLB_DEV_FL_CACHE ;
 int NULLB_DEV_FL_THROTTLED ;
 scalar_t__ NULL_Q_BIO ;
 scalar_t__ NULL_Q_MQ ;
 int QUEUE_FLAG_ADD_RANDOM ;
 int QUEUE_FLAG_NONROT ;
 int QUEUE_FLAG_ZONE_RESETALL ;
 TYPE_4__* blk_alloc_queue_node (int ,int ) ;
 int blk_cleanup_queue (TYPE_4__*) ;
 int blk_mq_free_tag_set (TYPE_2__*) ;
 TYPE_4__* blk_mq_init_queue (TYPE_2__*) ;
 int blk_queue_chunk_sectors (TYPE_4__*,int ) ;
 int blk_queue_flag_clear (int ,TYPE_4__*) ;
 int blk_queue_flag_set (int ,TYPE_4__*) ;
 int blk_queue_logical_block_size (TYPE_4__*,int ) ;
 int blk_queue_make_request (TYPE_4__*,int ) ;
 int blk_queue_physical_block_size (TYPE_4__*,int ) ;
 int blk_queue_required_elevator_features (TYPE_4__*,int ) ;
 int blk_queue_write_cache (TYPE_4__*,int,int) ;
 int cleanup_queues (struct nullb*) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int init_driver_queues (struct nullb*) ;
 int kfree (struct nullb*) ;
 struct nullb* kzalloc_node (int,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int null_config_discard (struct nullb*) ;
 int null_gendisk_register (struct nullb*) ;
 int null_init_queues (struct nullb*) ;
 int null_init_tag_set (struct nullb*,TYPE_2__*) ;
 int null_queue_bio ;
 int null_setup_fault () ;
 int null_validate_conf (struct nullb_device*) ;
 int null_zone_exit (struct nullb_device*) ;
 int null_zone_init (struct nullb_device*) ;
 int nullb_indexes ;
 int nullb_list ;
 int nullb_setup_bwtimer (struct nullb*) ;
 int set_bit (int ,int *) ;
 int setup_queues (struct nullb*) ;
 scalar_t__ shared_tags ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;
 TYPE_2__ tag_set ;

__attribute__((used)) static int null_add_dev(struct nullb_device *dev)
{
 struct nullb *nullb;
 int rv;

 null_validate_conf(dev);

 nullb = kzalloc_node(sizeof(*nullb), GFP_KERNEL, dev->home_node);
 if (!nullb) {
  rv = -ENOMEM;
  goto out;
 }
 nullb->dev = dev;
 dev->nullb = nullb;

 spin_lock_init(&nullb->lock);

 rv = setup_queues(nullb);
 if (rv)
  goto out_free_nullb;

 if (dev->queue_mode == NULL_Q_MQ) {
  if (shared_tags) {
   nullb->tag_set = &tag_set;
   rv = 0;
  } else {
   nullb->tag_set = &nullb->__tag_set;
   rv = null_init_tag_set(nullb, nullb->tag_set);
  }

  if (rv)
   goto out_cleanup_queues;

  if (!null_setup_fault())
   goto out_cleanup_queues;

  nullb->tag_set->timeout = 5 * HZ;
  nullb->q = blk_mq_init_queue(nullb->tag_set);
  if (IS_ERR(nullb->q)) {
   rv = -ENOMEM;
   goto out_cleanup_tags;
  }
  null_init_queues(nullb);
 } else if (dev->queue_mode == NULL_Q_BIO) {
  nullb->q = blk_alloc_queue_node(GFP_KERNEL, dev->home_node);
  if (!nullb->q) {
   rv = -ENOMEM;
   goto out_cleanup_queues;
  }
  blk_queue_make_request(nullb->q, null_queue_bio);
  rv = init_driver_queues(nullb);
  if (rv)
   goto out_cleanup_blk_queue;
 }

 if (dev->mbps) {
  set_bit(NULLB_DEV_FL_THROTTLED, &dev->flags);
  nullb_setup_bwtimer(nullb);
 }

 if (dev->cache_size > 0) {
  set_bit(NULLB_DEV_FL_CACHE, &nullb->dev->flags);
  blk_queue_write_cache(nullb->q, 1, 1);
 }

 if (dev->zoned) {
  rv = null_zone_init(dev);
  if (rv)
   goto out_cleanup_blk_queue;

  blk_queue_chunk_sectors(nullb->q, dev->zone_size_sects);
  nullb->q->limits.zoned = BLK_ZONED_HM;
  blk_queue_flag_set(QUEUE_FLAG_ZONE_RESETALL, nullb->q);
  blk_queue_required_elevator_features(nullb->q,
      ELEVATOR_F_ZBD_SEQ_WRITE);
 }

 nullb->q->queuedata = nullb;
 blk_queue_flag_set(QUEUE_FLAG_NONROT, nullb->q);
 blk_queue_flag_clear(QUEUE_FLAG_ADD_RANDOM, nullb->q);

 mutex_lock(&lock);
 nullb->index = ida_simple_get(&nullb_indexes, 0, 0, GFP_KERNEL);
 dev->index = nullb->index;
 mutex_unlock(&lock);

 blk_queue_logical_block_size(nullb->q, dev->blocksize);
 blk_queue_physical_block_size(nullb->q, dev->blocksize);

 null_config_discard(nullb);

 sprintf(nullb->disk_name, "nullb%d", nullb->index);

 rv = null_gendisk_register(nullb);
 if (rv)
  goto out_cleanup_zone;

 mutex_lock(&lock);
 list_add_tail(&nullb->list, &nullb_list);
 mutex_unlock(&lock);

 return 0;
out_cleanup_zone:
 if (dev->zoned)
  null_zone_exit(dev);
out_cleanup_blk_queue:
 blk_cleanup_queue(nullb->q);
out_cleanup_tags:
 if (dev->queue_mode == NULL_Q_MQ && nullb->tag_set == &nullb->__tag_set)
  blk_mq_free_tag_set(nullb->tag_set);
out_cleanup_queues:
 cleanup_queues(nullb);
out_free_nullb:
 kfree(nullb);
out:
 return rv;
}
