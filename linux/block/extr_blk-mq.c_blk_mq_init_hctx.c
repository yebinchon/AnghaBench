
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct blk_mq_tag_set {TYPE_2__* ops; int driver_data; int * tags; } ;
struct blk_mq_hw_ctx {unsigned int queue_num; int numa_node; TYPE_1__* fq; int tags; int cpuhp_dead; } ;
struct TYPE_4__ {int (* exit_hctx ) (struct blk_mq_hw_ctx*,unsigned int) ;scalar_t__ (* init_hctx ) (struct blk_mq_hw_ctx*,int ,unsigned int) ;} ;
struct TYPE_3__ {int flush_rq; } ;


 int CPUHP_BLK_MQ_DEAD ;
 scalar_t__ blk_mq_init_request (struct blk_mq_tag_set*,int ,unsigned int,int ) ;
 int blk_mq_remove_cpuhp (struct blk_mq_hw_ctx*) ;
 int cpuhp_state_add_instance_nocalls (int ,int *) ;
 scalar_t__ stub1 (struct blk_mq_hw_ctx*,int ,unsigned int) ;
 int stub2 (struct blk_mq_hw_ctx*,unsigned int) ;

__attribute__((used)) static int blk_mq_init_hctx(struct request_queue *q,
  struct blk_mq_tag_set *set,
  struct blk_mq_hw_ctx *hctx, unsigned hctx_idx)
{
 hctx->queue_num = hctx_idx;

 cpuhp_state_add_instance_nocalls(CPUHP_BLK_MQ_DEAD, &hctx->cpuhp_dead);

 hctx->tags = set->tags[hctx_idx];

 if (set->ops->init_hctx &&
     set->ops->init_hctx(hctx, set->driver_data, hctx_idx))
  goto unregister_cpu_notifier;

 if (blk_mq_init_request(set, hctx->fq->flush_rq, hctx_idx,
    hctx->numa_node))
  goto exit_hctx;
 return 0;

 exit_hctx:
 if (set->ops->exit_hctx)
  set->ops->exit_hctx(hctx, hctx_idx);
 unregister_cpu_notifier:
 blk_mq_remove_cpuhp(hctx);
 return -1;
}
