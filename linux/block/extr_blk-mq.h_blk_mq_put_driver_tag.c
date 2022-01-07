
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int tag; int internal_tag; int mq_hctx; } ;


 int __blk_mq_put_driver_tag (int ,struct request*) ;

__attribute__((used)) static inline void blk_mq_put_driver_tag(struct request *rq)
{
 if (rq->tag == -1 || rq->internal_tag == -1)
  return;

 __blk_mq_put_driver_tag(rq->mq_hctx, rq);
}
