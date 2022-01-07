
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct show_busy_params {scalar_t__ hctx; int m; } ;
struct request {scalar_t__ mq_hctx; int queuelist; } ;


 int __blk_mq_debugfs_rq_show (int ,int ) ;
 int list_entry_rq (int *) ;

__attribute__((used)) static bool hctx_show_busy_rq(struct request *rq, void *data, bool reserved)
{
 const struct show_busy_params *params = data;

 if (rq->mq_hctx == params->hctx)
  __blk_mq_debugfs_rq_show(params->m,
      list_entry_rq(&rq->queuelist));

 return 1;
}
