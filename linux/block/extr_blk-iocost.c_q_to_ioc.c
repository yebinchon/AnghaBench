
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct ioc {int dummy; } ;


 int RQ_QOS_COST ;
 int rq_qos_id (struct request_queue*,int ) ;
 struct ioc* rqos_to_ioc (int ) ;

__attribute__((used)) static struct ioc *q_to_ioc(struct request_queue *q)
{
 return rqos_to_ioc(rq_qos_id(q, RQ_QOS_COST));
}
