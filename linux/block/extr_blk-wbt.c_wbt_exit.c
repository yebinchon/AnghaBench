
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_wb {int cb; } ;
struct rq_qos {struct request_queue* q; } ;
struct request_queue {int dummy; } ;


 struct rq_wb* RQWB (struct rq_qos*) ;
 int blk_stat_free_callback (int ) ;
 int blk_stat_remove_callback (struct request_queue*,int ) ;
 int kfree (struct rq_wb*) ;

__attribute__((used)) static void wbt_exit(struct rq_qos *rqos)
{
 struct rq_wb *rwb = RQWB(rqos);
 struct request_queue *q = rqos->q;

 blk_stat_remove_callback(q, rwb->cb);
 blk_stat_free_callback(rwb->cb);
 kfree(rwb);
}
