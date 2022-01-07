
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {scalar_t__ part; } ;
struct mq_inflight {scalar_t__ part; int * inflight; } ;
struct blk_mq_hw_ctx {int dummy; } ;


 size_t rq_data_dir (struct request*) ;

__attribute__((used)) static bool blk_mq_check_inflight_rw(struct blk_mq_hw_ctx *hctx,
         struct request *rq, void *priv,
         bool reserved)
{
 struct mq_inflight *mi = priv;

 if (rq->part == mi->part)
  mi->inflight[rq_data_dir(rq)]++;

 return 1;
}
