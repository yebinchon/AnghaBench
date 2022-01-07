
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_mq_hw_ctx {TYPE_1__* tags; int state; } ;
struct TYPE_2__ {int active_queues; } ;


 int BLK_MQ_S_TAG_ACTIVE ;
 int atomic_inc (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

bool __blk_mq_tag_busy(struct blk_mq_hw_ctx *hctx)
{
 if (!test_bit(BLK_MQ_S_TAG_ACTIVE, &hctx->state) &&
     !test_and_set_bit(BLK_MQ_S_TAG_ACTIVE, &hctx->state))
  atomic_inc(&hctx->tags->active_queues);

 return 1;
}
