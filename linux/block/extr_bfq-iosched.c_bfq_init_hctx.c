
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {int dummy; } ;


 int bfq_depth_updated (struct blk_mq_hw_ctx*) ;

__attribute__((used)) static int bfq_init_hctx(struct blk_mq_hw_ctx *hctx, unsigned int index)
{
 bfq_depth_updated(hctx);
 return 0;
}
