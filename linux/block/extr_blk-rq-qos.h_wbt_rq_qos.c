
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;


 int RQ_QOS_WBT ;
 struct rq_qos* rq_qos_id (struct request_queue*,int ) ;

__attribute__((used)) static inline struct rq_qos *wbt_rq_qos(struct request_queue *q)
{
 return rq_qos_id(q, RQ_QOS_WBT);
}
