
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct request_queue {struct blkfront_info* queuedata; } ;
struct gendisk {struct request_queue* queue; struct blkfront_info* private_data; } ;
struct blkif_req {int dummy; } ;
struct TYPE_5__ {int queue_depth; int cmd_size; struct blkfront_info* driver_data; int flags; int numa_node; int nr_hw_queues; int * ops; } ;
struct blkfront_info {scalar_t__ max_indirect_segments; unsigned int physical_sector_size; int sector_size; struct gendisk* gd; struct request_queue* rq; TYPE_1__ tag_set; int nr_rings; } ;


 int BLK_MQ_F_SHOULD_MERGE ;
 int BLK_RING_SIZE (struct blkfront_info*) ;
 int EINVAL ;
 scalar_t__ HAS_EXTRA_REQ ;
 scalar_t__ IS_ERR (struct request_queue*) ;
 int NUMA_NO_NODE ;
 int PTR_ERR (struct request_queue*) ;
 scalar_t__ blk_mq_alloc_tag_set (TYPE_1__*) ;
 int blk_mq_free_tag_set (TYPE_1__*) ;
 struct request_queue* blk_mq_init_queue (TYPE_1__*) ;
 int blkfront_mq_ops ;
 int blkif_set_queue_limits (struct blkfront_info*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int xlvbd_init_blk_queue(struct gendisk *gd, u16 sector_size,
    unsigned int physical_sector_size)
{
 struct request_queue *rq;
 struct blkfront_info *info = gd->private_data;

 memset(&info->tag_set, 0, sizeof(info->tag_set));
 info->tag_set.ops = &blkfront_mq_ops;
 info->tag_set.nr_hw_queues = info->nr_rings;
 if (HAS_EXTRA_REQ && info->max_indirect_segments == 0) {






  info->tag_set.queue_depth = BLK_RING_SIZE(info) / 2;
 } else
  info->tag_set.queue_depth = BLK_RING_SIZE(info);
 info->tag_set.numa_node = NUMA_NO_NODE;
 info->tag_set.flags = BLK_MQ_F_SHOULD_MERGE;
 info->tag_set.cmd_size = sizeof(struct blkif_req);
 info->tag_set.driver_data = info;

 if (blk_mq_alloc_tag_set(&info->tag_set))
  return -EINVAL;
 rq = blk_mq_init_queue(&info->tag_set);
 if (IS_ERR(rq)) {
  blk_mq_free_tag_set(&info->tag_set);
  return PTR_ERR(rq);
 }

 rq->queuedata = info;
 info->rq = gd->queue = rq;
 info->gd = gd;
 info->sector_size = sector_size;
 info->physical_sector_size = physical_sector_size;
 blkif_set_queue_limits(info);

 return 0;
}
