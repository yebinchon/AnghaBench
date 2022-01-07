
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_mq_hw_ctx {scalar_t__ tags; scalar_t__ nr_ctx; } ;



__attribute__((used)) static inline bool blk_mq_hw_queue_mapped(struct blk_mq_hw_ctx *hctx)
{
 return hctx->nr_ctx && hctx->tags;
}
