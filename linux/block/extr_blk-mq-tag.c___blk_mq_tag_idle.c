
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_tags {int active_queues; } ;
struct blk_mq_hw_ctx {int state; struct blk_mq_tags* tags; } ;


 int BLK_MQ_S_TAG_ACTIVE ;
 int atomic_dec (int *) ;
 int blk_mq_tag_wakeup_all (struct blk_mq_tags*,int) ;
 int test_and_clear_bit (int ,int *) ;

void __blk_mq_tag_idle(struct blk_mq_hw_ctx *hctx)
{
 struct blk_mq_tags *tags = hctx->tags;

 if (!test_and_clear_bit(BLK_MQ_S_TAG_ACTIVE, &hctx->state))
  return;

 atomic_dec(&tags->active_queues);

 blk_mq_tag_wakeup_all(tags, 0);
}
