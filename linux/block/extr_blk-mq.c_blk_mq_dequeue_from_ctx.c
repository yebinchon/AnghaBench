
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dispatch_rq_data {struct request* rq; struct blk_mq_hw_ctx* hctx; } ;
struct blk_mq_hw_ctx {size_t type; int ctx_map; } ;
struct blk_mq_ctx {unsigned int* index_hw; } ;


 int __sbitmap_for_each_set (int *,unsigned int,int ,struct dispatch_rq_data*) ;
 int dispatch_rq_from_ctx ;

struct request *blk_mq_dequeue_from_ctx(struct blk_mq_hw_ctx *hctx,
     struct blk_mq_ctx *start)
{
 unsigned off = start ? start->index_hw[hctx->type] : 0;
 struct dispatch_rq_data data = {
  .hctx = hctx,
  .rq = ((void*)0),
 };

 __sbitmap_for_each_set(&hctx->ctx_map, off,
          dispatch_rq_from_ctx, &data);

 return data.rq;
}
