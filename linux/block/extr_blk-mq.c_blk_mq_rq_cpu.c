
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {TYPE_1__* mq_ctx; } ;
struct TYPE_2__ {unsigned int cpu; } ;



unsigned int blk_mq_rq_cpu(struct request *rq)
{
 return rq->mq_ctx->cpu;
}
