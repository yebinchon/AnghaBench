
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int tags; } ;


 int blk_mq_has_free_tags (int ) ;

bool blk_mq_can_queue(struct blk_mq_hw_ctx *hctx)
{
 return blk_mq_has_free_tags(hctx->tags);
}
