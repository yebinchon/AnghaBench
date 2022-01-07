
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rq_qos {int dummy; } ;
struct request_queue {int dummy; } ;
struct TYPE_2__ {int wc; } ;


 TYPE_1__* RQWB (struct rq_qos*) ;
 struct rq_qos* wbt_rq_qos (struct request_queue*) ;

void wbt_set_write_cache(struct request_queue *q, bool write_cache_on)
{
 struct rq_qos *rqos = wbt_rq_qos(q);
 if (rqos)
  RQWB(rqos)->wc = write_cache_on;
}
