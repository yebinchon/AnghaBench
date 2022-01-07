
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int depth; } ;
struct sbitmap_queue {TYPE_2__ sb; } ;
struct blk_mq_hw_ctx {int flags; int nr_active; TYPE_1__* tags; int state; } ;
struct TYPE_3__ {int active_queues; } ;


 int BLK_MQ_F_TAG_SHARED ;
 int BLK_MQ_S_TAG_ACTIVE ;
 unsigned int atomic_read (int *) ;
 unsigned int max (unsigned int,unsigned int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool hctx_may_queue(struct blk_mq_hw_ctx *hctx,
      struct sbitmap_queue *bt)
{
 unsigned int depth, users;

 if (!hctx || !(hctx->flags & BLK_MQ_F_TAG_SHARED))
  return 1;
 if (!test_bit(BLK_MQ_S_TAG_ACTIVE, &hctx->state))
  return 1;




 if (bt->sb.depth == 1)
  return 1;

 users = atomic_read(&hctx->tags->active_queues);
 if (!users)
  return 1;




 depth = max((bt->sb.depth + users - 1) / users, 4U);
 return atomic_read(&hctx->nr_active) < depth;
}
